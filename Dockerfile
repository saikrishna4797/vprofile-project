FROM nginx:latest
RUN rm -rf /var/www/html/*
COPY . /var/www/html/

