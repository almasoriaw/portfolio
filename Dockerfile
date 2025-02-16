# Use an Nginx base image to serve the static site
FROM nginx:latest

# Copy your static website files to the Nginx web server directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to access the website
EXPOSE 80

# Command to run Nginx (already provided in the base image)
CMD ["nginx", "-g", "daemon off;"]

