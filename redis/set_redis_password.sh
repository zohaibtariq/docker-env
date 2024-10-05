##!/bin/bash
#
## Check if ENVIRONMENT variable is set
#if [ -z "${ENVIRONMENT}" ]; then
#  echo "ENVIRONMENT variable is not set. Exiting."
#  exit 1
#fi
#
## Load the environment variables from the specified .env file
#if [ -f "/usr/local/bin/.env.${ENVIRONMENT}" ]; then
#  set -o allexport
#  source "/usr/local/bin/.env.${ENVIRONMENT}"
#  set +o allexport
#else
#  echo ".env.${ENVIRONMENT} file does not exist. Exiting."
#  exit 1
#fi
#
## Create a temporary copy of redis.conf.template
#cp /usr/local/etc/redis/redis.conf /usr/local/etc/redis/redis.conf.tmp
#
## Replace the requirepass line in the temporary file
#sed -i.bak "s/^requirepass .*/requirepass ${REDIS_PASSWORD}/" /usr/local/etc/redis/redis.conf.tmp
#
## Move the temporary file back to redis.conf.template
#mv /usr/local/etc/redis/redis.conf.tmp /usr/local/etc/redis/redis.conf

envsubst < /usr/local/etc/redis/redis.conf.template > /usr/local/etc/redis/redis.conf