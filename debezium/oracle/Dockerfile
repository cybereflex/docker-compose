FROM container-registry.oracle.com/database/free:23.26.0.0

COPY --chown=oracle:dba ./init-setup.sh /docker-entrypoint-initdb.d/startup/01-init-setup.sh

COPY --chown=oracle:dba ./init-startup.sql /docker-entrypoint-initdb.d/startup/02-init-startup.sql

RUN sed -i 's/\r$//' /docker-entrypoint-initdb.d/startup/01-init-setup.sh