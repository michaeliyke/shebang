#!/bin/bash

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#+ NOTE: This file is a VC'd backup of $HOME/.bash_aliases ++
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#+ PERSONAL TERMINAL ALIASES
#+ THESE ARE INCLUDED FROM SOURCES THAT ARE VERSION-CONTROLLED
#+ WITH GIT

USER_BIN=~/bin # Do not quote to enable full expansion
CONF="$USER_BIN/CONF/INIT_USER_SHELL_CONFIGS.sh"

# if [ -f "$USER_BIN/aliases.sh" ]; then
#	source "$USER_BIN/aliases.sh"
# fi

# INITIALIZE USER COMMAND LINE CONFIGS
if [ -f "$CONF" ]; then
	source "$CONF"
fi

