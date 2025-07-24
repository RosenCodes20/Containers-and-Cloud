# Use OpenJDK 11 slim image as the base
FROM openjdk:11-jre-slim

# Metadata
LABEL maintainer="Your Name <your@email.com>"

# Accept build-time argument for the JAR file
ARG JAR_FILE=target/*.jar

# Set working directory inside the container
WORKDIR /app

# Copy the specified JAR file into the container and rename it to app.jar
COPY ${JAR_FILE} app.jar

# Expose the port that the app runs on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
