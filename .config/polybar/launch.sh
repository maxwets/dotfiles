#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
for mon in $(polybar -m | cut -d':' -f1);
do
	export MONITOR="$mon"
	polybar -q main -c "conf.ini" &
done
