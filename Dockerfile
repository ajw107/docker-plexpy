FROM lsiobase/alpine.python
MAINTAINER sparklyballs, ajw107 (Alex Wood)

#make life easy for yourself
ENV TERM=xterm-color
RUN apk update && apk add --no-cache nano

# add local files
COPY root/ /
RUN chmod +x /usr/bin/ll

# cleanup
RUN rm -rf \
  /root/.cache \
	/tmp/* \
	/var/lib/apt/lists/* \
  /var/tmp/*

# ports and volumes
VOLUME /config /logs
EXPOSE 8181
