# Use an official Maven image as the base image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the application source code
COPY .  .

EXPOSE 8080

# Copy the JAR file from the build stage to the runtime stage
COPY --from=build /app/target/vprofile-v2.jar .

# Specify the command to run on container startup
CMD ["java", "-jar", "vprofile-v2.jar"]

