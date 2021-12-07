FROM centos:latest
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/progressus.zip /var/www/html
WORKDIR /var/www/html
RUN unzip progressus.zip 
RUN cp -rvf  Progressus/* . 
RUN rm -rf   Progressus progressus.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
