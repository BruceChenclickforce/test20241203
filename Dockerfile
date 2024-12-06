# Container image that runs your code
FROM php:8.1-fpm-alpine
RUN apk add --no-cache \
  curl \
  supervisor

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
