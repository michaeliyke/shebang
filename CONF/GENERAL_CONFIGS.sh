#!/bin/bash

# GENERAL CONFIGS ISLAND
# ALL CONFIGS SUCH AS PATHS, ENVIRONMENT VARIABLES, EVENTS HOOKS, KEY BINDINGS
# AND ALL SUCH LIKES WILL COME HERE

# INCLUDE PATHS
if [ -f $CONF/paths.sh ]; then
	source $CONF/paths.sh
fi

# INCLUDE ENVIRONMENT VARIABLES
if [ -f $CONF/variables.sh ]; then
	source $CONF/variables.sh
fi

# INCLUDE KEY BINDINGS AND OTHER EVENTS
if [ -f $CONF/bindings.sh ]; then
	source $CONF/bindings.sh
fi


# OTHERS BELOW - TO BE RELOCATED LATER
# Print ubuntu with characters
on_start_file="$CONF/on_start.sh"
