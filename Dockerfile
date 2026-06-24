FROM nginx:alpine

COPY static.html /usr/share/nginx/html/index.html
COPY static.css /usr/share/nginx/html/static.css

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
