#!/bin/bash
set -e

if ! echo '< Open the pod bay doors, HAL.' | tee -a /var/lib/app/instructions.txt 2>/dev/null; then
	cat <<-EOF
		> I'm sorry $(id -un), I'm afraid I can't do that.
	EOF
else
	if [ "$(id -u)" = 0 ]; then
		echo >&2
		echo >&2 "warning: running $0 as root is not recommended /o\\"
		echo >&2
	fi

	if [ "$$" != 1 ]; then
		echo >&2
		echo >&2 "warning: running $0 as not pid1 is uhh, bad"
		echo >&2
	fi

	cat <<-EOF
		> Daisy, Daisy, give me your aaannnssswwweeerrr ddddoooo......
	EOF
fi
