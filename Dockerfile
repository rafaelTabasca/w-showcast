FROM wordpress:php8.2-fpm-alpine

ENV WORDPRESS_DB_HOST=127.0.0.1 \
    WORDPRESS_DB_USER=wpuser \
    WORDPRESS_DB_PASSWORD=admin \
    WORDPRESS_DB_NAME=wpsite \
    WORDPRESS_TABLE_PREFIX=wp_

COPY wordpress/wp-content/themes /var/www/html/themes
COPY wordpress/wp-content/plugins /var/www/html/plugins


VOLUME ["/wp-content/themes/mytheme","/wp-content/plugins","/wp-content/uploads"]