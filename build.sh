if [ ! -f "id.rsa.pub" ];then
	echo "[INFO] public key does not exist, generating"
	ssh-keygen -t rsa -P '' -f id.rsa
fi
cp id.rsa.pub base/id_rsa.paas.pub
docker pull alpine:latest
cd base
docker build --tag paas_base .
cd ..

cd python
docker build --tag paas_python .
cd ..
cd php7
docker build --tag paas_php7 .
cd ..
cd java
docker build --tag paas_jar .
cd ..
cd jenkins
docker build --tag paas_jenkins .
cd ..
docker rmi -f `docker images |grep "<none>"|awk '{print $3}'`
