# Use the official Nginx image as a base
FROM nginx:alpine

# Install envsubst
RUN apk add --no-cache gettext

# Copy SSL certificates
COPY ssl /etc/nginx/ssl

# Copy the print_env.sh script to the container
COPY print_env.sh /usr/local/bin/print_env.sh

# Copy the start_nginx.sh script to the container
COPY start_nginx.sh /usr/local/bin/start_nginx.sh

# Make the scripts executable
RUN chmod +x /usr/local/bin/print_env.sh /usr/local/bin/start_nginx.sh

# Copy the Nginx configuration template
#COPY default.conf /etc/nginx/conf.d/default.conf.template

# Set the entrypoint to run the script and then start Nginx
#ENTRYPOINT ["/bin/sh", "-c", "/usr/local/bin/print_env.sh && envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]