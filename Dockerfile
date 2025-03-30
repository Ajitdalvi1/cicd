# Use the official OpenJDK runtime image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the application's port (Change 8080 if needed)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
