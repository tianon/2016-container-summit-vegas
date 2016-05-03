# README.md

yeah, in Vim (dat my "slides")


# warning

these aren't new problems, but they still come up so regularly that I feel they're worth repeating (and actually demoing)

if you're already familiar with the problems/solutions I'm going to be demonstrating, this might be a little bit slow-paced for your taste


# base

I'm a DD, let's start with a few Debian notes (thanks [@nathanleclaire](https://github.com/nathanleclaire)!)

- `build-essential` is not likely what you want (unless you're building `.deb` packages)
  - https://packages.debian.org/sid/build-essential
    > If you do not plan to build Debian packages, you don't need this package.
  - will lead to bloated build containers

- [manpages.debian.org](https://manpages.debian.org)


# 400-babies

- show off `main.c` (simple "forkcandle")

- `docker build`, `docker run -d`, `docker top`, ZOMBIES

- `signal(SIGCHLD)`

- `docker stop`, huh, that takes forever

- `signal(SIGTERM)`

- remove `-d` from `docker run`, `Ctrl+C`, noooo

- `signal(SIGINT)`

- `tini`
  - https://github.com/krallin/tini
  - https://github.com/Yelp/dumb-init

- real life examples:
  - MySQL: no SIGINT handling (harmless, mostly just irritating)
  - RabbitMQ: previous releases
  - Ruby: zombies


# hal-9000

- show off `app.sh` (simple "database" lolol)

- `docker build`, `docker run`, aww c'mon HAL

- `VOLUME`, woot! (but `root`)

- `USER`, aww

- `mkdir && chown`, woot

- `-v "$PWD/db":/var/lib/app`, aww

- un-`USER`, add `gosu` and `docker-entrypoint.sh`
  - https://github.com/tianon/gosu
  - https://github.com/ncopa/su-exec

- talk about `exec` in `docker-entrypoint.sh` and why it matters (pid 1, signals)

- real life examples:
  - pretty much any database (Cassandra, Elasticsearch, MongoDB, MySQL, PostgreSQL, RabbitMQ, Redis)


# filler

- `rawdns`
  - https://github.com/tianon/rawdns
  - transparent apt-cacher-ng

- `cluster-dind`
  - https://github.com/tianon/docker-dind-cluster

- "personal jenkins" (insert CI of your choice here)
  - beats random cron jobs you lose track of or forget about
  - easy to debug and manually fire
  - easy web interface for checking status
