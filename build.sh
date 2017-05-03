cd base
docker build --tag paas_base .
cd ..
cd php
docker build --tag paas_php .
cd ..
docker rmi -f `docker images |grep "<none>"|awk '{print $3}'`
