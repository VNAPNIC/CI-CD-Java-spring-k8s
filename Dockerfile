FROM openjdk:11-jdk-slim
EXPOSE 8080
COPY target/my-app.jar /app/my-app.jar
WORKDIR /app
ENV KAFKA_BROKERS "<comma-separated-list-of-kafka-brokers>"
ENTRYPOINT ["java", "-jar", "my-app.jar", "--spring.kafka.bootstrap-servers=$KAFKA_BROKERS"]
