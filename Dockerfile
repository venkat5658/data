FROM httpd
COPY */index.html /var/www/html/index.html
WORKDIR /var/www/html
EXPOSE 8080
