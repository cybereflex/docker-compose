### master

#### my.cnf 

```cnf
[mysqld]
host-cache-size=0
skip-name-resolve
datadir=/var/lib/mysql
socket=/var/run/mysqld/mysqld.sock
secure-file-priv=/var/lib/mysql-files
user=mysql

pid-file=/var/run/mysqld/mysqld.pid

server-id=1
log_bin=1
binlog_format=ROW
binlog_do_db=project

[client]
socket=/var/run/mysqld/mysqld.sock

!includedir /etc/mysql/conf.d/
```

#### create user

```sql
CREATE USER 'replicator'@'%' IDENTIFIED BY 'replicator';

GRANT REPLICATION SLAVE ON *.* TO 'replicator'@'%';

FLUSH PRIVILEGES;

-- before mysql version 8.4
SHOW MASTER STATUS; 

-- after mysql version 8.4
SHOW BINARY LOG STATUS;
```

### slave

#### my.cnf

```cnf
[mysqld]
host-cache-size=0
skip-name-resolve
datadir=/var/lib/mysql
socket=/var/run/mysqld/mysqld.sock
secure-file-priv=/var/lib/mysql-files
user=mysql

pid-file=/var/run/mysqld/mysqld.pid

server-id=2
log_bin=1
binlog_do_db=project

[client]
socket=/var/run/mysqld/mysqld.sock

!includedir /etc/mysql/conf.d/
```

#### create replication

```sql
-- before mysql version 8.23
CHANGE MASTER TO MASTER_HOST='127.0.0.1', MASTER_USER='replicator', MASTER_PASSWORD='replicator', MASTER_LOG_FILE='binlog.000002', MASTER_LOG_POS=869;

-- after mysql version 8.23
CHANGE REPLICATION SOURCE TO SOURCE_HOST='127.0.0.1', SOURCE_USER='replicator', SOURCE_PASSWORD='replicator', SOURCE_LOG_FILE='mysql-bin.000002', SOURCE_LOG_POS=869;

-- before mysql version 8.0.22
START SLAVE;

-- after mysql version 8.0.22
START REPLICA;

-- before mysql version 8.0.22
SHOW SLAVE STATUS;

-- after mysql version 8.0.22
SHOW REPLICA STATUS;
```