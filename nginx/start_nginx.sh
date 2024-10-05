#!/bin/sh

# Print environment file path
echo "Environment file path: .env.${ENVIRONMENT}"

# Substitute only the SSL_CERTIFICATE and SSL_CERTIFICATE_KEY variables
envsubst '\$SSL_CERTIFICATE \$SSL_CERTIFICATE_KEY' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

# Start Nginx
exec nginx -g 'daemon off;'