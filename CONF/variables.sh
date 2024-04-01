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
	HBNB_MYSQL_USER=hbnb_dev
	HBNB_MYSQL_PWD=hbnb_dev_pwd
	HBNB_MYSQL_HOST=localhost
	HBNB_MYSQL_DB=hbnb_dev_db
	HBNB_ENV=test___
	HBNB_TYPE_STORAGE=db
	web01="54.237.104.249"
	web02="54.164.48.172"
	web03="52.86.159.13"
)

# LOAD THE VARIABLES ABOVE INTO THE ENVIRONMENT
for VAR in "${VARIABLES[@]}"; do
	export "$VAR"
done




# GROUPED VARIABLES
export {michaeliyke,michael,mybin,bin}="$USER_BIN"
export {bashrc,rc,config,conf}="$bashrc_path"
