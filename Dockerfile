# Use official NGINX image
FROM nginx:alpine

# Remove default nginx index
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files from /build to nginx root
COPY build/ /usr/share/nginx/html/

# Set proper permissions (optional, safe)
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80
