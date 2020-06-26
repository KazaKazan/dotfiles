#!/bin/bash

if [[ $1 == "" ]]; then
	n=1;
	while read p; do
		if [[ $p == \#* ]]; then
			true
		elif [[ $p == ===* ]]; then
			printf '\e[1m\e[35m%s\e[0m\n' "${p:3}"
		elif [[ $p == ==* ]]; then
			printf '\e[35m%s\e[0m\n' "${p:2}"
		elif [[ $p == !* ]]; then
			printf '\e[36m%s\e[0m\n' "$n) ${p:1}"; ((n=n+1))
		else
			printf "$n) $p\n"; ((n=n+1))
		fi
	done < .todo/list
else
	while getopts "hwea:" opt
	do
		case $opt in
			w) echo "# todo v.0.1.0 by KazaKaza" > ~/.todo;;
			e) "$EDITOR" ~/.todo/list;;
			a) echo "$OPTARG" >> ~/.todo/list;;
			h) cat ~/.todo/help;;
			\?) echo "Invalid option. todo -h for help." >&2;;
		esac
	done
fi
