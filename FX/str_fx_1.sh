#!/bin/bash


#  Strip possible leading zero(s)
#+ from the argument passed
#  The "1" refers to "$1"
#  The "0" is what to remove - strip zero(s)
strip_leading_zero()
{
	return=${1#0}
}

# if has_m " git commt -am 'Make una leave' --am  -a "
# 	then
# 	echo "YES"
# else
# 	echo "NOOOP!"
# fi

# checks if a string contains a substring
# If substring is a substring of string, return true else false
substr_of()
{
	string="$1"
	substring="$2"

	# return true if substring is present
	[[ "$string" == *"${substring}"* ]] && return 0
	return 1
}

# checks if a string starts with a substring
# If substring is a substring of string, return true else false
starts_with()
{
	string="$1"
	substring="$2"

	# return true if string starts with substring
	[[ "$string" == "${substring}"* ]] && return 0
	return 1
}

# checks if a string ends with a substring
# If substring is a substring of string, return true else false
ends_with()
{
	string="$1"
	substring="$2"

	# return true if string ends with substring
	[[ "$string" == *"${substring}" ]] && return 0
	return 1
}

# Find all matches of a substring in a string and
# replace all, or some of them starting from left to right
str_replace()
{
	string="${1?"base string required"}" # must be provided
	match="${2?"the string to replace is required"}" # must be provided
	replacement="${3:-}" # If missing, empty is used
	multiple="${4:-}" # if provided, shows how many times to replace.
	# Replaces all by default

	if (( multiple )) # tests that var is integer operable and > 0
		then
		for (( i=0; i<multiple; i++ ))
			do string="${string/$match/$replacement}"
		done
		echo "$string"
	elif [[ -n $multiple && $multiple -eq 0 ]]
		then echo "$string"
	fi

	if [[ -z $multiple ]] # If var is empty
		then echo "${string//$match/$replacement}" # Replace all occurence of match
	fi
}

