FROM openjdk:25-slim
COPY target/springboot-worker-example-1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]