FROM fedora:latest
LABEL maintainer="izanloomoha@gmail.com"
RUN yum install -y update && yum install -y install nginx
COPY files/default /etc/nginx/sites-available/default
COPY files/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
