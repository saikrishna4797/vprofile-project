# Use a base image with Tomcat and Java
FROM tomcat:9

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the Tomcat webapps directory
COPY *.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
