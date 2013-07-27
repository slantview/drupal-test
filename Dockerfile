FROM srude/php_app

ADD ./config/nginx-default.conf /etc/nginx/sites-available/default

EXPOSE :80
CMD supervisord -n