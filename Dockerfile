FROM httpd
COPY index.html/index.html /var/www/html/htdocs
WORKDIR /var/www/html
EXPOSE 8080
