FROM srude/php_app

ADD ./config/nginx-default.conf /etc/nginx/sites-available/default
ADD ./public_html /var/www
ADD ./config/settings.php /var/www/sites/default/settings.php
RUN mkdir -p /var/www/sites/default/files
RUN chown -R www-data:www-data /var/www/

EXPOSE 80
CMD ["supervisord", "-n"]