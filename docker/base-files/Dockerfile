FROM debian:buster-slim

RUN apt-get update && \
	apt-get -q -y install apache2 cron curl locales mariadb-client php php-apcu php-bcmath php-cli php-common php-curl php-gd php-mbstring php-memcache php-mysql php-uploadprogress php-xml sudo vim && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get autoremove -y && \
	rm -rf /var/www/*

COPY private /var/www/private
COPY vendor /var/www/vendor
COPY web /var/www/web
COPY settings.local.php /var/www/web/sites/default
COPY 000-default.conf /etc/apache2/sites-enabled
COPY fqdn.conf /etc/apache2/conf-available

RUN a2enconf fqdn && \
	a2enmod expires && \
	a2enmod headers && \
	a2enmod rewrite && \
	cp /var/www/web/sites/default/default.settings.php /var/www/web/sites/default/settings.php && \
	echo "include \$app_root . '/' . \$site_path . '/settings.local.php';" >> /var/www/web/sites/default/settings.php && \
	mkdir -p /var/www/config/sync && \
	mkdir -p /var/www/web/sites/default/files && \
	chown -R www-data:www-data /var/www

EXPOSE 80

HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost || exit 1

CMD apache2ctl -D FOREGROUND
