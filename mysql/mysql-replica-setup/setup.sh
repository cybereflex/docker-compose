#!/bin/bash
set -e

MASTER_HOST=mysql-replica-master
SLAVE_HOST=mysql-replica-slave
REPLICA_USER=replica
REPLICA_PASSWORD=replica
ROOT_PASSWORD=root

waiting_for_mysql() {
    local host=$1
    local timeout=60
    local count=0

    until mysql -h "$host" -uroot -p"$ROOT_PASSWORD" -e "SELECT 1" > /dev/null 2>&1; do
        sleep 1
        count=$((count + 2))
        if [ $count -ge $timeout ]; then
            echo "error: $host mysql starting timeout"
            exit 1
        fi
        echo "waiting $host mysql start... $count second"
    done
}

waiting_for_mysql $MASTER_HOST
waiting_for_mysql $SLAVE_HOST

mysql -h "$MASTER_HOST" -uroot -p"$ROOT_PASSWORD" -e "
    CREATE USER '$REPLICA_USER'@'%' IDENTIFIED BY '$REPLICA_PASSWORD';
    GRANT REPLICATION SLAVE ON *.* TO '$REPLICA_USER'@'%';
    FLUSH PRIVILEGES;
"

mysql -h "$SLAVE_HOST" -uroot -p"$ROOT_PASSWORD" --get-server-public-key <<EOF
    STOP REPLICA;
    RESET REPLICA ALL;
    CHANGE REPLICATION SOURCE TO
        SOURCE_HOST='$MASTER_HOST',
        SOURCE_USER='$REPLICA_USER',
        SOURCE_PASSWORD='$REPLICA_PASSWORD',
        SOURCE_AUTO_POSITION=1,
        GET_SOURCE_PUBLIC_KEY=1,
        SOURCE_SSL=0;
    START REPLICA;
EOF

sleep 2

mysql -h "$SLAVE_HOST" -uroot -p"$ROOT_PASSWORD" -e "SHOW REPLICA STATUS;" 