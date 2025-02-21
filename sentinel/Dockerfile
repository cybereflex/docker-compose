FROM openjdk:8-jre-slim

COPY "./sentinel-dashboard-1.8.8.jar" "/home/sentinel-dashboard.jar"

ENV JAVA_OPTS '-Dserver.port=15566 -Dcsp.sentinel.dashboard.server=localhost:15566 -Dsentinel.dashboard.auth.username=sentinel -Dsentinel.dashboard.auth.password=sentinel'

RUN chmod -R +x /home/sentinel-dashboard.jar

EXPOSE 15566

CMD java ${JAVA_OPTS} -jar /home/sentinel-dashboard.jar