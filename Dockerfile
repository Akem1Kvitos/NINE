FROM  ubuntu:18.04

RUN apt -y update && apt install -y wget && apt -y install nginx
# RUN echo 'Hello World from Docker!' > /var/www/html/index.html

RUN wget https://playsdev.com/ 
 #COPY index.html  /var/www/html/index.html 
RUN cp index.html /var/www/html/index.html
RUN cp default.conf /etc/nginx/sites-available/default
EXPOSE 81


CMD ["nginx", "-g", "daemon off;"]
