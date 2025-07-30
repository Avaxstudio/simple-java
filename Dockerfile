FROM openjdk:17-jdk-slim
COPY target/*.jar app.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "/app.jar"]