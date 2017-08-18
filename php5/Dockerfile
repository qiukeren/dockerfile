FROM paas_base

RUN apk add php5 php5-pgsql php5-zip php5-cgi php5-embed php5-xmlrpc php5-mysql \
	php5-imap php5-zlib php5-calendar php5-dba php5-mysqli \
	php5-soap php5-shmop php5-wddx php5-cli php5-fpm php5-bz2 php5-sockets php5-pdo_mysql \
	php5-iconv php5-ftp php5-gettext php5-mssql php5-mcrypt php5-exif \
	php5-xmlreader php5-gd php5-xml php5-pcntl php5-pear \
	php5-pdo_pgsql php5-phar php5-ctype php5-intl \
	php5-pdo php5-openssl php5-common php5-posix php5-pdo_sqlite php5-dom \
	php5-curl php5-xsl php5-ldap php5-json php5-enchant php5-bcmath \
	php5-opcache php5-sqlite3 php5-gmp nginx redis
#RUN apk add php7 php7-apcu php7-bcmath php7-bz2 php7-calendar php7-cgi php7-common \
#	php7-ctype php7-curl php7-dba php7-dom php7-exif php7-fpm php7-ftp php7-gd \
#	php7-gettext php7-gmp php7-iconv php7-imap php7-intl php7-json php7-ldap \
#	php7-mbstring php7-mcrypt php7-mysqlnd php7-opcache php7-openssl php7-pdo \
#	php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-pear php7-pgsql \
#	php7-session php7-sockets php7-sqlite3 php7-tidy php7-wddx php7-xdebug \
#	php7-xml php7-xmlrpc php7-xsl php7-zip php7-zlib nginx

RUN apk --no-cache add supervisor && mkdir -p /var/log/supervisord

COPY nginx.conf /etc/nginx/nginx.conf

COPY fpm-pool.conf /etc/php5/php-fpm.d/custom.conf
COPY php.ini /etc/php5/conf.d/custom.ini

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME /data/web/

EXPOSE 80

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
