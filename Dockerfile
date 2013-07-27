FROM srude/php_app

ADD ./config/nginx-default.conf /etc/nginx/sites-available/default
ADD ./public_html /var/www
RUN mkdir -p /var/www/sites/default/files
RUN cp /var/www/sites/default/default.settings.php /var/www/sites/default/settings.php
RUN chown -R www-data:www-data /var/www/

EXPOSE :80
CMD supervisord -n