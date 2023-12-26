FROM tomcat:9

# Set environment variables
ENV CATALINA_BASE /opt/tomcat
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove the default Tomcat webapps
RUN rm -rf $CATALINA_BASE/webapps/*

# Copy the war file into the webapps directory
COPY target/*.war $CATALINA_BASE/webapps/*.war

# Expose the port your app runs on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
