#!/bin/bash
args=$@
if [ -z "$args" ]; then
	echo "Devices: "
	ls /dev/sd* -1
	echo "Mount all devices? [y/n]"
	read -r answer
	if [ "$answer" = "y" ]; then
		ls /dev/sd* | while read -r device; do
		mkdir -p /home/mmppppss/datos$device
		sudo mount $device /home/mmppppss/datos$device
		done
	else
		echo "Use: mount.sh [device]"
	fi
	exit 1
else
	mkdir -p /home/mmppppss/datos$args
	sudo mount $args /home/mmppppss/datos$args
fi
