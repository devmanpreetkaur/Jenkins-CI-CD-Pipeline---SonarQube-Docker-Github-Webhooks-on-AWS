# Use the official Nginx image as the base image
FROM nginx

# Create a new non-root user (for example, "nginxuser") and switch to it
RUN adduser --system --group --no-create-home nginxuser
USER nginxuser

# Copy the contents of the local "html" directory to the Nginx's web root
COPY ./usr/share/nginx/html /usr/share/nginx/html
