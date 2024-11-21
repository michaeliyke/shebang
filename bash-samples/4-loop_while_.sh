#!/usr/bin/env bash
clear

# 0
# Count to 10
{ # Bash anonymous function just to group commands.
	a=0
	while [ $a -lt 10 ]
	do
		echo -n "$a "
		let "a+=1"
	done # > /dev/null
	echo; echo
} > /dev/null

# 1
{ # Bash anonymous function just to group commands.
	i=0
	while ((i<10))
	do
		echo -n "$i "
		((i++))
	done # > /dev/null
	echo; echo
} > /dev/null

i=0
function condition()
{
	if [ $i -lt 10 ]
	then
		let "i+=1"
		return 0
	else
		return 1
	fi
}

# 2
{ # Bash anonymous function just to group commands.
	while condition
	do
		echo -n "$i "
	done #  > /dev/null
	echo; echo
} > /dev/null

# Read a file
{ # Bash anonymous function just to group commands.
	cat aa.sh |
	while read value
	do
		echo "$value"
	done #  > /dev/null
	echo; echo
} > /dev/null

# Read file 2
{ # Bash anonymous function just to group commands.
	while read value
	do
		echo "$value"
	done < aa.sh #  > /dev/null
	echo; echo
} > /dev/null
