#!/bin/sh

# Description: Toggles autocopy of selection content, while ignoring selection from Yomichan
# Dependencies: xdotool, clipnotify, sselp, xclip

set -eu

LOCKFILE="/tmp/selautocopy"

if [ -e "$LOCKFILE" ]; then
	pid=$(cat "$LOCKFILE")
	rm -f "$LOCKFILE"
	kill "$pid" 2>/dev/null
	notify-send "Selection autocopy disabled!"
	exit
fi

(
	while clipnotify; do
		if ! xdotool getwindowfocus getwindowname | grep -q "Yomichan"; then
			sselp | xclip -i -sel clip
		fi
	done
) &
pid=$!

if [ -n "$pid" ]; then
	echo $! >"$LOCKFILE"
	notify-send "Selection autocopy enabled!"
fi
