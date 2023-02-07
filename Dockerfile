# Use an openjdk image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the jar file from your local machine to the container
COPY target/real-world-app.jar /app/real-world-app.jar

# Expose port 8080 to allow communication to/from server
EXPOSE 8080

# Set the command to run when the container starts
CMD ["java", "-jar", "real-world-app.jar"]