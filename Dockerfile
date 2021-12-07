FROM centos:latest
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/one-health.zip /var/www/html
WORKDIR /var/www/html
RUN unzip one-health.zip 
RUN cp -rvf one-health/* . 
RUN rm -rf one-health. one-health.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
