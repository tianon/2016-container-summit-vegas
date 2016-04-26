FROM debian:jessie

## https://github.com/tianon/gosu
## could also use https://github.com/ncopa/su-exec
#ENV GOSU_VERSION 1.7
#RUN set -x \
#	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
#	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
#	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
#	&& export GNUPGHOME="$(mktemp -d)" \
#	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
#	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \
#	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc \
#	&& chmod +x /usr/local/bin/gosu \
#	&& gosu nobody true \
#	&& apt-get purge -y --auto-remove ca-certificates wget

COPY *.sh /usr/local/bin/

#RUN mkdir -p /var/lib/app && chown -R nobody /var/lib/app

#VOLUME /var/lib/app

#USER nobody

#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["app.sh"]
