FROM flink:2.0.0-scala_2.12

ENV FLINK_VERSION=2.0.0

ENV CONNECTOR_VERSION=3.4.0

RUN apt-get update && apt-get -y --no-install-recommends install wget curl

RUN wget -q -O /opt/flink/lib/flink-streaming-java.jar https://repo1.maven.org/maven2/org/apache/flink/flink-streaming-java/${FLINK_VERSION}/flink-streaming-java-${FLINK_VERSION}.jar 
RUN wget -q -O /opt/flink/lib/flink-cdc-pipeline-connector-mysql.jar https://repo1.maven.org/maven2/org/apache/flink/flink-cdc-pipeline-connector-mysql/${CONNECTOR_VERSION}/flink-cdc-pipeline-connector-mysql-${CONNECTOR_VERSION}.jar 
RUN wget -q -O /opt/flink/lib/flink-sql-connector-mysql-cdc.jar https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-mysql-cdc/${CONNECTOR_VERSION}/flink-sql-connector-mysql-cdc-${CONNECTOR_VERSION}.jar 
RUN wget -q -O /opt/flink/lib/flink-sql-connector-oracle-cdc.jar https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-oracle-cdc/${CONNECTOR_VERSION}/flink-sql-connector-oracle-cdc-${CONNECTOR_VERSION}.jar 
RUN wget -q -O /opt/flink/lib/flink-sql-connector-postgres-cdc.jar https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-postgres-cdc/${CONNECTOR_VERSION}/flink-sql-connector-postgres-cdc-${CONNECTOR_VERSION}.jar 
RUN wget -q -O /opt/flink/lib/flink-sql-connector-sqlserver-cdc.jar https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-sqlserver-cdc/${CONNECTOR_VERSION}/flink-sql-connector-sqlserver-cdc-${CONNECTOR_VERSION}.jar

