#!/bin/bash


# Ascertain if a path exists or not
# Returns 0 for true and 1 for false
# Uses the -e flag to test for path existence
function exists()
{
	local file="$1"

	if [ -e "$file" ]; then
		return 0
	else
		return 1
	fi
}

# Ascertain if a given path exists and is a file
# Returns 0 for true and 1 for false
# Uses the -f operator to test for file existence
function isfile()
{
	local file="$1"

	if [ -f "$file" ]; then
		return 0
	else
		return 1
	fi
}


# Ascertain if a given path exists and is a directory
# Returns 0 for true and 1 for false
# Uses the -f operator to test for directory existence
function isdir()
{
	local file="$1"

	if [ -d "$file" ]; then
		return 0
	else
		return 1
	fi
}

