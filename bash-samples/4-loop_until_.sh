#!/usr/bin/env bash
clear

# until condition_is_true; do ---; done

# 0 - read file and print
{ # Bash anonymous function just to group commands.
	cat aa.sh |
	until ! read value
	do
		echo "$value"
	done
	echo; echo
}  > /dev/null

# 1 - Read file
{ # Bash anonymous function just to group commands.
	until ! read value
	do
		echo "$value"
	done < aa.sh #  > /dev/null
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
	until ! condition
	do
		echo -n "$i "
	done #  > /dev/null
	echo; echo
} > /dev/null


# 2 - Count to 10
{ # Bash anonymous function just to group commands.
	a=0
	until [ $a -eq 10 ]
	do
		echo -n "$a "
		let "a+=1"
	done # > /dev/null
	echo; echo
} > /dev/null

# 1
{ # Bash anonymous function just to group commands.
	i=0
	until ((i==10))
	do
		echo -n "$i "
		((i++))
	done # > /dev/null
	echo; echo
} > /dev/null
