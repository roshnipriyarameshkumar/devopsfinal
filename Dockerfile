# Use official nginx base image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your build folder content to nginx html directory
COPY build/ /usr/share/nginx/html

# Expose default HTTP port
EXPOSE 80
