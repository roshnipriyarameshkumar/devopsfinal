# Use official NGINX image
FROM nginx:alpine

# Remove default nginx index
RUN rm -rf /usr/share/nginx/html/*

# Copy ONLY the contents of your local build folder into the container
COPY ./build/ /usr/share/nginx/html/

# Set proper permissions (optional but recommended)
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80
