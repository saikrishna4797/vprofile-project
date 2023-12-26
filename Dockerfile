FROM tomcat:9
RUN rm -rf opt/tomcat/webapps/*
COPY /target/*.war  /opt/tomcat/webapps/
EXPOSE 8080
WORKDIR /opt/tomcat/webapps/
CMD ["catalina.sh","run"]

