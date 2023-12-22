# Use an official Maven image as the base image
FROM openjdk:17

WORKDIR /app

COPY .  .

# Copy the JAR file from the build stage to the runtime stage
ADD /target/vprofile-v2.war vprofile-v2.war

# Specify the command to run on container startup
CMD ["java", "-war", "vprofile-v2.war"]

