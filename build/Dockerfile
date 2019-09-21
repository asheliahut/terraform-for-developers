FROM php:7.3.9-fpm-alpine3.9

# Set To non root user
USER www-data

# New in Docker 1.12
HEALTHCHECK --interval=10s --timeout=3s --retries=3 CMD if [ "$(netstat -anp | grep -i tcp | grep -i php-fpm | wc -l)" -ne 1 ]; then exit 1; else exit 0; fi;

# Copy Source code and set working directory
COPY www /var/www
WORKDIR /var/www

# https://github.com/docker-library/php/blob/f4baf0edbc4e05e241938c68bcc7c9635707583d/7.2/alpine3.7/fpm/Dockerfile#L196
CMD ["/bin/sh", "-c", "php-fpm -D"]
