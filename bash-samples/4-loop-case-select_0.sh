#!/usr/bin/env bash
clear

while true; do
	echo; echo "Hit some keys, then hit return."
	read keys

	len="${#keys}"
	for (( i=0; i < "${#keys}"; i++ )); do
		ch="${keys:i:1}"
		case "$ch" in
			[xX] ) break 2;;
			[[:lower:]] ) echo "$ch is lowercase";;
			[[:upper:]] ) echo "$ch is uppercase";;
			[0-9] ) echo "$ch is  digit";;
			* ) echo "$ch is a punctuation, whitespace, or other";;
		esac
	done
done
