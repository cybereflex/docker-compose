FROM postgres:18-bookworm

ENV PLUGIN_VERSION=v3.4.0.Final

RUN apt-get update && \
    apt-get install -f -y --no-install-recommends software-properties-common build-essential pkg-config git clang-14 llvm-14 postgresql-server-dev-18 && \
    add-apt-repository "deb http://ftp.debian.org/debian testing main contrib" && \
    apt-get install -f -y --no-install-recommends libprotobuf-c-dev=1.5.* libprotobuf-c1 && \
    apt-get install -f -y --no-install-recommends postgresql-18-postgis-3 postgresql-18-postgis-3-scripts postgis postgresql-18-pgvector && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/debezium/postgres-decoderbufs -b $PLUGIN_VERSION --single-branch && \
    cd /postgres-decoderbufs && \
    make && make install && \
    cd / && \
    rm -rf postgres-decoderbufs

COPY ./postgresql.conf.sample  /usr/share/postgresql/postgresql.conf.sample

COPY ./init-postgres.sql /docker-entrypoint-initdb.d/init-postgres.sql