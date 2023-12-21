# Use an official Maven image as the base image
FROM maven:3.9.4-openjdk-17.0.9 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the POM file and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the application source code
COPY src src

# Build the application
RUN mvn clean package

# Use an official OpenJDK runtime as the base image
FROM adoptopenjdk:17-jre-hotspot-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage to the runtime stage
COPY --from=build /app/target/vprofile-v2.jar .

# Specify the command to run on container startup
CMD ["java", "-jar", "vprofile-v2.jar"]

