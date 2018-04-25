FROM nginx:latest

FROM httpd:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf

