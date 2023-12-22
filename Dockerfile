# Use a base image with Tomcat and Java
FROM tomcat:9

# Remove the default Tomcat applications
RUN rm -rf /opt/tomcat/webapps/*.war

# Copy the WAR file into the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/pipeline-project/target/*.war /opt/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
