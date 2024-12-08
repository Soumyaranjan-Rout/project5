FROM tomcat:latest
EXPOSE 8080
COPY webapps/target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
