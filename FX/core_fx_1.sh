#!/bin/bash


# get the pid of a process by the program's name
function get_pid()
{
	local prog_name="$1"
	local tmp=~/bin/FX/tmpfiles/tmp
	ps aux | grep $prog_name | grep -v grep > $tmp

	echo $(python3 ~/bin/FX/tmpfiles/get_pid_py.py $(realpath $tmp))
}

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

# Append a new line of string to the contents of a file
# This command will exit with 0 if successfull or 1 or other values on error
function append()
{
	local file_path="$1"
	local stri_value="$2"

	if isfile "$file_path"; then
		echo "$stri_value">>"$file_path"
		return $?
	else
		return 1
	fi
}

function purge_pending_installs()
{
	sudo dpkg --configure -a
	sudo dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge
	sudo apt-get clean
	sudo apt-get autoremove
}
