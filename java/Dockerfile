FROM paas_ssh

RUN apk add openjdk8 nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY supervisord-java.conf supervisord-nginx.conf /etc/supervisor.d/

VOLUME /data/web/

EXPOSE 80

