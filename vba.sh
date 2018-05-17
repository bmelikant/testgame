#!/bin/bash
if [ ! -e "testgame.gba" ]; then
	make
	exitStatus=$?

	if [ $exitStatus -ne 0 ]; then
		echo "Build was unsuccessful: $?"
		exit $?
	fi
fi

vba testgame.gbc
exit 0