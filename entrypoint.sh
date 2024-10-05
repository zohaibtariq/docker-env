#!/bin/bash

# Generate SSL certificates
./generate_ssl.sh

# Start the main services
exec "$@"