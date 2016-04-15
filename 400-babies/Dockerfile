FROM debian:jessie

RUN apt-get update && apt-get install -y gcc && rm -rf /var/lib/apt/lists/*

## https://github.com/krallin/tini
## could also use https://github.com/Yelp/dumb-init
#ENV TINI_VERSION v0.9.0
#RUN set -x \
#	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
#	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" \
#	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" \
#	&& export GNUPGHOME="$(mktemp -d)" \
#	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 \
#	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini \
#	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc \
#	&& chmod +x /usr/local/bin/tini \
#	&& tini -h \
#	&& apt-get purge -y --auto-remove ca-certificates wget

WORKDIR /deported
COPY . .

RUN gcc -o /usr/local/bin/app *.c

CMD ["app"]
