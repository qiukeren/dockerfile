FROM alpine:latest

ADD env.sh /etc/profile.d/

ADD motd /etc/motd

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk update && apk upgrade &&\ 
    apk add curl wget htop iftop nano bash file openssh ncurses coreutils tzdata openrc rsyslog dcron openssh-server-pam
RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/g" /etc/ssh/sshd_config
RUN sed -i "s/#UsePAM no/UsePAM yes/g" /etc/ssh/sshd_config

RUN rc-update add sshd
RUN rc-update add dcron

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN ssh-keygen -A

ADD id_rsa.paas.pub /root/.ssh/authorized_keys


#RUN apk --no-cache add ca-certificates && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk && apk add glibc-2.23-r3.apk

ENTRYPOINT ["/sbin/init"]

