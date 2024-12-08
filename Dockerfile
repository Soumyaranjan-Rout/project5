FROM tomcat:latest
EXPOSE 8080
COPY webapp/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
