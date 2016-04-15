#!/bin/bash
set -e

if ! echo '< Open the pod bay doors, HAL.' | tee -a /var/lib/app/instructions.txt 2>/dev/null; then
	cat <<-EOF
		> I'm sorry Dave, I'm afraid I can't do that.
	EOF
else
	cat <<-EOF
		> Daisy, Daisy, give me your aaannnssswwweeerrr ddddoooo......
	EOF
fi
