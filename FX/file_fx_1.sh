#!/bin/bash


# Function that gets base name of a dir path
# Fails when the file has no extension
function get_basename()
{
	local path="$1"
	echo "${path##*.}" # Same as `basename $1`
}

# Function that gets a file's extension
function get_extension()
{
	local filename="$1"
	echo "${filename##*.}"
}

# Function that gets a file name from path
# Consistent with the command basename
function get_filename()
{
	local file_path="$1"
	echo "${file_path##*/}"
}

# Function that gets the name only part of a file name
# excluding the extension
function get_filename_no_ext()
{
	local filename=$(get_filename "$1")
	local name="${filename%%.*}"

	echo "$name"
}
