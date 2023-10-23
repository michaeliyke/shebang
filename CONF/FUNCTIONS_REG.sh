#!/bin/bash

# FUNCTIONS ISLAND
# LOAD ALL FUNCTIONS BELOW


# LOAD THE QUICK XYZ FUNCTIONS
if [ -f $FX/QUICK_FX.sh ]; then
	source $FX/QUICK_FX.sh
fi


# LOAD FILE RELATED FUNCTIONS
if [ -f $FX/FILE_FX.sh ]; then
	source $FX/FILE_FX.sh
fi


# LOAD SHELL RELATED FUNCTIONS
if [ -f $FX/SHELL_FX.sh ]; then
	source $FX/SHELL_FX.sh
fi


# LOAD STRING RELATED FUNCTIONS
if [ -f $FX/STR_FX.sh ]; then
	source $FX/STR_FX.sh
fi


# Set this variable, seems some functionality depends on it
FUNCTIONS_LOADED=1
