FROM centos:latest 
RUN yum install -y httpd 
ADD . /var/www/html
WORKDIR /var/www/html
CMD["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80