FROM paas_base

RUN apk add openssh dcron

RUN apk --no-cache add supervisor && mkdir -p /var/log/supervisord

RUN ssh-keygen -A

ADD id_rsa.paas.pub /root/.ssh/authorized_keys
ADD supervisord-cron.conf  supervisord-ssh.conf /etc/supervisor.d/
COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
