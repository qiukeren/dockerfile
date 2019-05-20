FROM alpine:latest

# add global system variable
ADD env.sh /etc/profile.d/

# add ssh login motd
ADD motd /etc/motd

# replace default mirror
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

# add common utils
RUN apk update && apk upgrade &&\ 
    apk add curl wget htop iftop nano bash file openssh ncurses coreutils \
        tzdata openrc syslog-ng dcron openssh-server-pam s6 vim\
        gzip bzip2 util-linux busybox-extras sysstat screen tree

# allow root login
RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/g" /etc/ssh/sshd_config
RUN sed -i "s/#UsePAM no/UsePAM yes/g" /etc/ssh/sshd_config

# use bash instead of ash
RUN sed -i "s/root:\/root:\/bin\/ash/root:\/root:\/bin\/bash/g" /etc/passwd

# set timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# set global sshd key
RUN ssh-keygen -A

# add default ssh root key
ADD id_rsa.paas.pub /root/.ssh/authorized_keys

# add initd
ADD s6 /etc/services.d

#RUN apk --no-cache add ca-certificates && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk && apk add glibc-2.23-r3.apk

# start
ENTRYPOINT ["s6-svscan","/etc/services.d/"]

