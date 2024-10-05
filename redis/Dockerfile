FROM redis:latest

# Install gettext for envsubst
RUN apt-get update && apt-get install -y gettext && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/local/etc/redis

# Copy the Redis configuration template
COPY redis.conf.template redis.conf.template

# Copy the script to set the password
COPY set_redis_password.sh /usr/local/bin/set_redis_password.sh

# Make the script executable
RUN chmod +x /usr/local/bin/set_redis_password.sh

# Set the entrypoint
ENTRYPOINT ["/bin/bash", "-c", "/usr/local/bin/set_redis_password.sh && exec redis-server /usr/local/etc/redis/redis.conf"]
