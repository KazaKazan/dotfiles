#!/bin/bash

if [[ $1 == "" ]]; then
	tail -n +2 ~/.todo;
    	exit;
else
	while getopts "hwea:" opt
	do
		case $opt in
			w) echo "# todo v.0.0.1 by KazaKaza" > ~/.todo;;
			e) "$EDITOR" ~/.todo;;
			a) echo "$OPTARG" >> ~/.todo;;
			h) printf -- '\e[36m\e[1m-h\e[0m to display help\n\e[36m\e[1m-w\e[0m to wipe your list\n\e[36m\e[1m-a\e[0m to append new item to the list\n\e[36m\e[1m-h\e[0m to edit the list in your editor\nCall with no options to view your list.\n';;
			\?) echo "Invalid option. todo -h for help." >&2;;
		esac
	done
fi
