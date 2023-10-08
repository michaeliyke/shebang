#!/bin/bash
if [ -z $FUNCTIONS_LOADED ]; then
	echo Not Set
	exit 0
fi
ext=$(get_extension "exmple.lua")
if [ -n $ext ]; then
	echo $ext
fi
