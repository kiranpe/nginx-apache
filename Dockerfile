FROM nginx:latest

FROM httpd:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/local/apache2/htdocs/index.html 
