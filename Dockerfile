FROM nginx
WORKDIR /usr/local/nginx/htdocs/
COPY . /usr/local/nxinx/htdocs/
EXPOSE 8080
CMD ["/usr/sbin/nginx","-D","FOREGROUND"]
