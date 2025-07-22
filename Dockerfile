# Use a lightweight JDK base image
FROM openjdk:17-jdk-slim

# Add a label (good practice)
LABEL maintainer="shadow846"

# Create app directory inside container
WORKDIR /app

# Copy the built jar from Jenkins workspace into the container
COPY target/cloudops-maven-1.0-SNAPSHOT.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
