# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Add a volume to store logs
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Add the application's JAR file to the container
ADD target/TaskManagementApplication.jar TaskManagementApplication.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/TaskManagementApplication.jar"]