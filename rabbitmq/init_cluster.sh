docker exec -it rabbitmq-cluster-02 bash -c "
    rabbitmqctl stop_app && 
    rabbitmqctl join_cluster rabbitmq@rabbitmq-cluster-01 && 
    rabbitmqctl start_app
"
docker exec -it rabbitmq-cluster-03 bash -c "
    rabbitmqctl stop_app && 
    rabbitmqctl join_cluster rabbitmq@rabbitmq-cluster-01 && 
    rabbitmqctl start_app
"