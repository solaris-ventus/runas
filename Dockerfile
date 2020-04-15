FROM ubuntu:18.04
ENV runninguser 1000
ENV runninggroup 1000
COPY entrypoint.sh /entrypoint.sh
COPY gosu /bin/gosu
ENTRYPOINT [ "/entrypoint.sh" ]
