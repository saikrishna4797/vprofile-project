# Use an official Maven image as the base image
FROM openjdk:17

EXPOSE 8080

# Copy the JAR file from the build stage to the runtime stage
ADD /target/vprofile-v2.jar vprofile-v2.jar

# Specify the command to run on container startup
CMD ["java", "-jar", "vprofile-v2.jar"]

