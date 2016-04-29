# base

I'm a DD, let's start with a few Debian notes

- `build-essential` is not likely what you want (unless you're building `.deb` packages)
  - https://packages.debian.org/sid/build-essential
    > If you do not plan to build Debian packages, you don't need this package.
  - will lead to bloated build containers

- [manpages.debian.org](https://manpages.debian.org)


# 400-babies

- `docker build`, `docker run -d`, `docker top`, ZOMBIES

- `signal(SIGCHLD)`

- `docker stop`, huh, that takes forever

- `signal(SIGTERM)`

- remove `-d` from `docker run`, `Ctrl+C`, noooo

- `signal(SIGINT)`

- `tini`
  - https://github.com/krallin/tini
  - https://github.com/Yelp/dumb-init
