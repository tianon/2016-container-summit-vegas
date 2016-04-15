FROM debian:jessie

RUN apt-get update && apt-get install -y gcc && rm -rf /var/lib/apt/lists/*

WORKDIR /deported
COPY . .

RUN gcc -o /usr/local/bin/app *.c

CMD ["app"]
