#!/bin/bash

# Lists the functions in the current shell
function functions()
{
	declare -F
}

# Get a function by name in the current shell
function getfunction()
{
	local function_name="$1"
	declare -f | grep "$function_name"
}

# Get an alias by name in the current shell
function getalias()
{
	local alias_name="$1"
	alias | grep "alias $alias_name"
}
