FROM devopsedu/webapp
COPY target/phpapp.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
#
