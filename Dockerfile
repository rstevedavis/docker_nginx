FROM ubuntu:latest

# Nginx
RUN apt-get update && apt-get install -y nginx nginx-extras && mkdir /var/www

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 3200

CMD ["nginx", "-g", "daemon off;"]