FROM apache/hive:4.0.1

ENV POSTGRESQL_JDBC_VERSION=42.7.4

USER root

RUN apt-get update && apt-get install -y --no-install-recommends curl wget

RUN wget -q -O /opt/hive/lib/postgres.jar \
    https://jdbc.postgresql.org/download/postgresql-${POSTGRESQL_JDBC_VERSION}.jar

USER hive