#!/bin/bash

# Create directories for SSL certificates
mkdir -p nginx/ssl/local
mkdir -p nginx/ssl/staging
mkdir -p nginx/ssl/prod

# Generate SSL certificate for local environment
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/ssl/local/nginx.key -out nginx/ssl/local/nginx.crt -subj "/CN=localhost"

# Generate SSL certificate for staging environment
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/ssl/staging/nginx.key -out nginx/ssl/staging/nginx.crt -subj "/CN=staging.example.com"

# Generate SSL certificate for production environment
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/ssl/prod/nginx.key -out nginx/ssl/prod/nginx.crt -subj "/CN=example.com"