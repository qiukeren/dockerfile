FROM paas_ssh

RUN apk add php7 php7-apcu php7-bcmath php7-bz2 php7-calendar php7-cgi php7-common \
	php7-ctype php7-curl php7-dba php7-dom php7-exif php7-fpm php7-ftp php7-gd \
	php7-gettext php7-gmp php7-iconv php7-imap php7-intl php7-json php7-ldap \
	php7-mbstring php7-mcrypt php7-mysqlnd php7-opcache php7-openssl php7-pdo \
	php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-pear php7-pgsql \
	php7-session php7-sockets php7-sqlite3 php7-tidy php7-wddx php7-xdebug \
	php7-xml php7-xmlrpc php7-xsl php7-zip php7-zlib nginx redis


COPY nginx.conf /etc/nginx/nginx.conf

COPY fpm-pool.conf /etc/php7/php-fpm.d/custom.conf
COPY php.ini /etc/php7/conf.d/custom.ini

COPY supervisord-nginx.conf  supervisord-php5.conf  supervisord-redis.conf /etc/supervisor/conf.d/

VOLUME /data/web/

EXPOSE 80

