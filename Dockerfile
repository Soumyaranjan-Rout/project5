FROM tomcat:latest
EXPOSE 8080
COPY /var/lib/jenkins/workspace/project5/webapp/target/webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
