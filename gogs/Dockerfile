FROM gogs/gogs
ENV PORT 80

RUN sed -i "s/git/root/g" /app/gogs/docker/s6/gogs/run
