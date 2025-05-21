FROM nginx:1.27.0-alpine

# Copy website files
COPY build/ /usr/share/nginx/html

# Copy nginx config with auth enabled
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy htpasswd file
COPY htpasswd /etc/nginx/.htpasswd

# Fix permissions (optional)
# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
