ARG STACK_VERSION

FROM docker.elastic.co/logstash/logstash:${STACK_VERSION:-8.16.1}

COPY ./logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./pipelines.yml /usr/share/logstash/config/pipelines.yml
COPY ./pipeline-socket.conf /usr/share/logstash/pipeline/pipeline-socket.conf