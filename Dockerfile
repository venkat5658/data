FROM ubuntu



COPY index.html /var/www/html/index.html

WORKDIR /var/www/html

EXPOSE 80:8080

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

