
FROM fedora
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
RUN tar xvfz apache-tomcat-9.0.80.tar.gz
RUN mv apache-tomcat-9.0.80/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
COPY SampleWebApp.war .
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

#http://localhost:8081/SampleWebApp/
