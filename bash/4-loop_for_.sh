#!/usr/bin/env bash
clear

# Loop through the arguments of the executing script
# This loops through $@ special variable
for arg
do
	echo -n "$arg "
done
echo

# Loop through the ouput of a command
for n in "$(echo '1 2 3 4 5 6')"
do
	echo -n "$n "
done
echo

# Loop through the words of a string
for word in "My name is Michael"
do
	echo -n "$word "
done
echo

# Loop through the charcters of a strings
string="incandescency"
for (( i=0; i<${#string}; i++))
do
	echo -n "${string:i:1} "
done
echo

F="
	/usr/sbin/accept
	/usr/sbin/pwck
	/usr/sbin/chroot
	/usr/bin/fakefile
	/sbin/badblocks
	/sbin/ypbind" # This is not an array but is used as if it were one

i=0
for f in $F
	do
	echo "$i: $f"
	((i++))
done

F=($F) # make F an array
echo "${#F[@]}" # 6
echo "${#F}" # 16
