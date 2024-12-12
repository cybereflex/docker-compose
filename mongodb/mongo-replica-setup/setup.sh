#!/bin/bash
set -e

PRIMARY_HOST=mongo-replica-primary:27017
REPLICA_01_HOST=mongo-replica-01:27017
REPLICA_02_HOST=mongo-replica-02:27017

sleep 10

mongosh --host $PRIMARY_HOST <<EOF
  var conf = {
    "_id": "DefaultReplicaSet",
    "version": 1,
    "members": [
      {
        "_id": 0,
        "host": "$PRIMARY_HOST",
        "priority": 2
      },
      {
        "_id": 1,
        "host": "$REPLICA_01_HOST",
        "priority": 0
      },
      {
        "_id": 2,
        "host": "$REPLICA_02_HOST",
        "priority": 0
      }
    ]
  };
  rs.initiate(conf);
EOF