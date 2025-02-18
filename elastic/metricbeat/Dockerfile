ARG STACK_VERSION

FROM docker.elastic.co/beats/metricbeat:${STACK_VERSION:-8.16.1}

USER root

COPY ./metricbeat.yml /usr/share/metricbeat/metricbeat.yml

RUN chmod 640 /usr/share/metricbeat/metricbeat.yml