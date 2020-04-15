FROM ubuntu:18.04
ENV runninguser app
ENV runninggroup app
COPY entrypoint.sh /entrypoint.sh
COPY gosu /bin/gosu
ENTRYPOINT [ "/entrypoint.sh" ]
