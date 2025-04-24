# Use official Nginx image
FROM nginx:alpine

# Set working directory to Nginx's default html folder
WORKDIR /usr/share/nginx/html

# Remove default nginx files
RUN rm -rf ./*

# Copy your HTML, CSS, and images into the container
COPY . .

# Expose port 80
EXPOSE 80

# No CMD needed, Nginx runs automatically from the base image
