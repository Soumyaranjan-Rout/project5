FROM tomcat:latest
EXPOSE 8080
COPY */*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
