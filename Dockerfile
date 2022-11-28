FROM httpd
COPY index.html /var/www/html/htdocs
WORKDIR /var/www/html
EXPOSE 8080
