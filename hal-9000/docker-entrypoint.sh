#!/bin/bash
set -e

if [ "$1" = 'app.sh' ]; then
	chown -R nobody /var/lib/app
	set -- gosu nobody "$@"
fi

exec "$@"
