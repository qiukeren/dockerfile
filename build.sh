docker pull alpine:latest
cd base
docker build --tag paas_base .
cd ..
cd ssh
docker build --tag paas_ssh .
cd ..
cd openresty
docker build --tag paas_openresty .
cd ..
cd python2
docker build --tag paas_python2 .
cd ..
cd php7
docker build --tag paas_php7 .
cd ..
cd php5
docker build --tag paas_php5 .
cd ..
cd java
docker build --tag paas_jar .
cd ..
cd gogs
#docker build --tag paas_gogs .
cd ..
docker rmi -f `docker images |grep "<none>"|awk '{print $3}'`
