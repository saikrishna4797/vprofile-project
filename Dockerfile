# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0

# Set environment variables
ENV CATALINA_BASE /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove the default Tomcat webapps
RUN rm -rf $CATALINA_BASE/webapps/*

# Copy the war file into the webapps directory
COPY target/vprof*.war $CATALINA_BASE/webapps/ROOT.war

# Expose the port your app runs on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

