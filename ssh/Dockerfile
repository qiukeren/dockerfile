FROM paas_base

RUN apk add openssh

RUN apk --no-cache add supervisor && mkdir -p /var/log/supervisord

RUN ssh-keygen -A

COPY supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
