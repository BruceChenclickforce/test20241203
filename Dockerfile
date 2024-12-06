# Container image that runs your code
FROM php:8.1-fpm-alpine
RUN apk add --no-cache \
  curl \
  nginx \
  composer \
  php81 \
  php81-ctype \
  php81-curl \
  php81-dom \
  php81-fileinfo \
  php81-fpm \
  php81-gd \
  php81-intl \
  php81-mbstring \
  php81-mysqli \
  php81-opcache \
  php81-openssl \
  php81-phar \
  php81-session \
  php81-tokenizer \
  php81-xml \
  php81-xmlreader \
  php81-xmlwriter \
  supervisor

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
