#!/bin/bash


# Function that gets base name of a dir path
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
function get_filename()
{
	local file_path="$1"
	echo "${file_path##*/}"
}

