FROM php:7.3-apache
#RUN mkdir /var/www
COPY . /var/www
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /var/www && a2enmod rewrite
