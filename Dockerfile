FROM nginx:latest

RUN rm -f /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
