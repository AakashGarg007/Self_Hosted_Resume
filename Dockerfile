FROM nginx:1.17.9-alpine

#Adding some metadata
LABEL maintainer="Aakash Garg <aakashgarg007@gmail.com>"

#cludded copy commands to reduce layer of the image
COPY nginx.conf ssl_certificates/  /etc/nginx/
COPY app/ /usr/share/nginx/html

EXPOSE 80
EXPOSE 443

#STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]