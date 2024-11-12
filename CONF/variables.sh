#!/bin/bash
# Default value if var not defined or defined but is null
: {$USER_BIN:-~/bin}
# -------------------------------------------------------------


# Load private VARS
source ~/bin/ACCESS_KEYS/PRIVATE_VARS.sh

# ENVIRONMENT VARS
# DROP A VARIABLES IN BELOW ARRAY
VARIABLES=(
	bashrc_path=~/.bashrc
	test_putchar=$michael/test_putchar
	PYCODE="print('Alx school')"
	PYNGUIN_DANGER_AWARE="YES"

	
	_FLASK_DEBUG="1"
	NODE_PATH=/usr/lib/node_modules
)

# LOAD THE VARIABLES ABOVE INTO THE ENVIRONMENT
for VAR in "${VARIABLES[@]}"; do
	export "$VAR"
done




# GROUPED VARIABLES
export {michaeliyke,michael,mybin,bin}="$USER_BIN"
export {bashrc,rc,config,conf}="$bashrc_path"
