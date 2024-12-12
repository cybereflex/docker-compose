FROM mysql:lts

COPY ./my.cnf /etc/mysql/conf.d/mysql.cnf

RUN chmod 644 /etc/mysql/conf.d/mysql.cnf

COPY ./init-mysql.sql /docker-entrypoint-initdb.d/init-mysql.sql