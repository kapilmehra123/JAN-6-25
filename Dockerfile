FROM centos:latest
RUN yum install httpd zip wget unzip -y
RUN wget -O /var/www/html/applight.zip https://www.free-css.com/assets/files/free-css-templates/download/page295/applight.zip
WORKDIR /var/www/html
RUN unzip applight.zip
RUN cp -rf Applight/* . &&\
    rm -rf Applight
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
