#!/usr/bin/bash

# This script is used to activate the virtual environment in a directory
# To use: create a .bashrc alias that sources this script, and
# invoke yoiur alias from terminal to activate the virtual environment if pesent
# Example
# alias activate_env="source ~/bin/env_activate_script.sh"
# activate_env

# Invokes find_env_activate.py to get the path to the activate script
function get_env_activate_script() {
	local env_activate_script
	env_activate_script=$(find_env_activate.py)
	# Check if the output is not empty using the -n test
	if [[ -n $env_activate_script ]]; then
		# shellcheck disable=SC1090
		source "${env_activate_script}"
	fi
}

get_env_activate_script
