FROM nginx:1.17.9-alpine

LABEL maintainer="Aakash Garg <aakashgarg007@gmail.com>"

COPY nginx.conf ssl_certificates/  /etc/nginx/
COPY app/ /usr/share/nginx/html

EXPOSE 80
EXPOSE 443

#STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]