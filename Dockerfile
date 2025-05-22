FROM nginx:latest
RUN apt update && apt install vim -y
COPY site /usr/share/nginx/html 