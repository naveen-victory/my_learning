FROM fedora:34
#FROM centos:latest
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

#http://localhost:8000/
#docker run --detach --publish 8000:80 --name hhtpd-server-container 
