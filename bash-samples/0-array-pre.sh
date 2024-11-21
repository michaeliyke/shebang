#!/usr/bin/env bash
clear

F="
	/usr/sbin/accept
	/usr/sbin/pwck
	/usr/sbin/chroot
	/usr/bin/fakefile
	/sbin/badblocks
	/sbin/ypbind" # This is not an array but is used as if it were one

i=0
# for f in $F
	# do
	# echo "$i: $f"
	# break
	# ((i++))
# done

F=($F) # make F an array
# echo "${#F[@]}" # 6
# echo "${#F}" # 16
# Turn the string below into a bash array of lines;
# Loop through the bash array of lines and execute 100-textme.rb on each
# Just for fun!
str="
Feb  1 11:00:00 [from:+14169955502] [to:+16474951758] [flags:-1:0:-1:0:-1]
Feb  1 11:00:00 [from:+17272713208] [to:+19172319348] [flags:-1:0:-1:0:-1]
Feb  1 11:00:00 [from:18572406905] [to:14022180266] [flags:-1:0:-1:-1:-1]
Feb 1 11:00:00 [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1]
"

# lines=($str) # Turn $str into an array

# echo "$lines"
# echo
# echo "${#lines[@]}"

for line in "${str[@]}"; do
	echo "$line"
	break
done

