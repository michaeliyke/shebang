#!/usr/bin/env bash
clear
outer=1
for a in `seq 0 9`
do
	echo
	inner=1
	for b in `seq 0 9`
	do
		echo -n "$b "
		break 2 # Break out of both current and outer loop levels - wow!
		# continue can also take an argument like so: continue 2
		# continue 2 - means cause 1 skip each on two loop levels begin w/ current
	done
done
echo;
