FROM nginx:1.28-alpine
COPY site/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
USER nginx
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
