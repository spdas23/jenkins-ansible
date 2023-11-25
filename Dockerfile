FROM centos:7
RUN yum update -y 
RUN yum install nginx -y  
COPY ./index.html /usr/share/nginx/html/index.html
Expose 80
CMD ["nginx", "-g", "daemon off;"]