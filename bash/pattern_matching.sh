#!/usr/bin/env bash
clear

# NOTE: # and ## work from the left end of the string
# But the % and %% work from right to left end of the string


# {var#Pattern}
# Remove from $var the shortest part of $Pattern that matches the front end
# of $var.

# ${var##Pattern} Remove from $var the longest part of $Pattern that matches t
# he front end of $var

# Remove one leading zero
# E.g 0000370=>000370-> just one short of the rest
function strip_leading_zero()
{
	shopt -s extglob # Turn on the extended globbing feature
	result=${1#+(0)} # Remove single leading zero
	shopt -u extglob # Turn off the extended globbing feature
	echo $result
}

# Remove all leading zeros
# E.g 0000370=>370
function strip_leading_zeros()
{
	shopt -s extglob # Turn on extended globbing
	v=${1##+(0)} # Get longst matching series of 0's
	shopt -u extglob # Turn off extended globbing
	v2=${v:-0} # if v is empty maybe due to input such as 000 = return 0 instead

	# The extended globbing feature is what makes this possible
	# Otherwie, only a single 0 would have been chopped off
	echo $v2
}

echo `strip_leading_zeros 0000370`
echo `strip_leading_zero 0000370`



# File Base Name
echo
echo Base name of current working directory `basename $PWD`
echo Base name of current working directory "${PWD##*/}"

echo
echo Base name of current script: `basename $0`
echo "Base name of current script: ${0##*/}"


# File Extension
echo
echo "The extension of current file is: .${0##*.}"
echo
