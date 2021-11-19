#FROM devopsedu/webapp
#COPY target/phpapp.war /usr/local/tomcat/webapps
#EXPOSE 8080
#CMD /usr/local/tomcat/bin/catalina.sh run


FROM devopsedu/webapp
RUN apt-get -y update 
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /opt/tomcat
# COPY tomcat-8.5.37.tar.gz /tmp
# RUN cd /tmp && tar xvfz tomcat-8.5.37.tar.gz
# RUN mv /tmp/apache-tomcat-8.5.37/* /opt/tomcat/
# RUN rm /tmp/tomcat-8.5.37.tar.gz
ADD tomcat-8.5.37.tar.gz /tmp
RUN mv /tmp/apache-tomcat-8.5.37/* /opt/tomcat/
COPY target/phpapp.war /opt/tomcat/webapps
EXPOSE 8080
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]  ## JSON Format
# ENTRYPOINT /opt/tomcat/bin/catalina.sh run  ## Shell Format
