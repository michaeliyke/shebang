#!/usr/bin/env bash
clear
# ${parameter?err_msg} and ${parameter:?err_msg}

# CASE: ${parameter?err_msg}
# If parameter set, use it, else print err_msg and abort the script with an
# exit status of 1
MAIL=${MAIL:-${USER}@${HOSTNAME}}
: ${USER?} ${HOME?} ${HOSTNAME?} ${MAIL?}
# If any of the above is missing, error system error message is displayed
# and program quits.

{
	echo
	echo "Name of the machine is $HOSTNAME"
	echo "You are $USER"
	echo "Your home directory is $HOME"
	echo "Your mail inbox is located in $MAIL"
	echo
	echo "If you are reading this message,"
	echo "Critical environment variables have been set."
	echo
	echo
}

ThisVariable=Value-of-ThisVariable
: ${ThisVariable?} # Throw error and quit if NOT SET - may be empty

ThisVariable=
: ${ThisVariable?} # Throw error and quit if NOT SET - may be empty
unset ThisVariable
# :${ThisVariable?} # Throws an error here
# :${ThisVariable?"var isn't set"} # Throws a custom error here
# echo ${ThisVariable?"var isn't set"} >/dev/null # Throws a custom error here

# CASE ${parameter:?err_msg}
# The : makes a difference only when parameter has been declared
# and is null
