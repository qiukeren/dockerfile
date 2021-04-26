FROM paas_base

RUN apk update && apk add php7 php7-apcu php7-bcmath php7-bz2 php7-calendar php7-cgi php7-common \
	php7-ctype php7-curl php7-dba php7-dom php7-exif php7-fpm php7-ftp php7-gd \
	php7-gettext php7-gmp php7-iconv php7-imap php7-intl php7-json php7-ldap \
	php7-mbstring php7-mcrypt php7-mysqlnd php7-opcache php7-openssl php7-pdo \
	php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-pear php7-pgsql \
	php7-session php7-sockets php7-sqlite3 php7-tidy php7-xdebug \
	php7-xml php7-xmlrpc php7-xsl php7-zip php7-zlib redis

RUN apk update && apk add nginx-mod-http-geoip2 nginx-mod-http-dav-ext nginx-mod-http-cookie-flag \
	nginx-mod-mail nginx-mod-http-lua-upstream nginx-mod-stream-js nginx-mod-http-upload-progress \
	nginx-mod-http-lua nginx-mod-http-untar nginx-mod-rtmp nginx-mod-http-echo \
	nginx-mod-http-set-misc nginx-mod-http-image-filter nginx-mod-http-nchan nginx-mod-stream-geoip2 \
	nginx-mod-http-shibboleth nginx-mod-http-cache-purge nginx-mod-http-fancyindex \
	nginx-mod-http-redis2 nginx-mod-http-zip nginx-mod-http-geoip nginx-mod-http-accounting \
	nginx-mod-http-headers-more nginx-mod-http-upstream-jdomain nginx-mod-stream nginx-mod-http-vts \
	nginx-mod-http-xslt-filter nginx-vim nginx-mod-devel-kit nginx-mod-http-perl nginx-mod-http-brotli \
	nginx-mod-http-js nginx-mod-http-array-var nginx-mod-http-encrypted-session \
	nginx-mod-http-upstream-fair nginx-mod-http-naxsi nginx-mod-http-vod nginx-mod-stream-geoip


COPY nginx.conf /etc/nginx/nginx.conf

COPY fpm-pool.conf /etc/php7/php-fpm.d/custom.conf
COPY php.ini /etc/php7/conf.d/custom.ini

COPY supervisord-nginx.conf  supervisord-php7.conf  supervisord-redis.conf /etc/supervisor.d/

VOLUME /data/web/

EXPOSE 80

