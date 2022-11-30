FROM nginx
WORKDIR /usr/local/nginx/htdocs/
ENV PATH=/usr/local/nginx:$PATH
COPY . /usr/local/nxinx/htdocs/
EXPOSE 8080
CMD ["nginx"]
