#!/bin/bash
# Default value if var not defined or defined but is null
: {$USER_BIN:-~/bin}
# -------------------------------------------------------------



# ENVIRONMENT VARS
# DROP A VARIABLES IN BELOW ARRAY
VARIABLES=(
	bashrc_path=~/.bashrc
	test_putchar=$michael/test_putchar
	CURRENT_WORKING_DIR= # PATH="$HOME/bin:$URRENT_WORKING_DIR"
	PYFILE=main.py
	PYCODE="print('Alx school')"
	PYNGUIN_DANGER_AWARE="YES"

	# FOR HBNB CLONE
	_HBNB_MYSQL_USER=hbnb_dev
	_HBNB_MYSQL_PWD=hbnb_dev_pwd
	_HBNB_MYSQL_HOST=localhost
	_HBNB_MYSQL_DB=hbnb_dev_db
	_HBNB_ENV=test___
	_HBNB_TYPE_STORAGE=db
	web01="100.25.13.200"
	web02="54.85.107.188"
	lb="54.88.115.160"
	lb01="54.88.115.160"
	_FLASK_APP="2-c_route.py"
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
