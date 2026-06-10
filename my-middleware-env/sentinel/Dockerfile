FROM eclipse-temurin:8u472-b08-jre-alpine-3.22

ARG SENTINEL_VERSION=1.8.9

RUN apk add --no-cache curl \
    && mkdir -p /app \
    && curl -fSL --output /app/sentinel-dashboard.jar \
    https://github.com/alibaba/Sentinel/releases/download/${SENTINEL_VERSION}/sentinel-dashboard-${SENTINEL_VERSION}.jar

RUN addgroup -S sentinel && adduser -S sentinel -G sentinel

RUN chown -R sentinel:sentinel /app/ 

WORKDIR /app

USER sentinel

ENV JAVA_OPTS '-Dserver.port=15566 -Dcsp.sentinel.dashboard.server=localhost:15566'

EXPOSE 15566

CMD java ${JAVA_OPTS} -jar /app/sentinel-dashboard.jar