FROM tomcat:latest
EXPOSE 8080
COPY /root/project5/webapp/target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
