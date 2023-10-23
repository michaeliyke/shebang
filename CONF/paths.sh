#!/bin/bash

# LOAD CUSTOM PATHS

# DROP A PATH IN BELOW ARRAY
cust_bin_paths=(
	"$bin/bin" # bin inside of bin where proven tokens stand out
	"$bin/extras" # extras
	"$bin/commons" # commons

	# OTHERS BELOW

)

# WILL BE LOADED BY load_paths FUNCTION WHICH WILL BE EXECUTED
# FOR EVERY COMMAND TO MAKE NEW PATHS REFLECT QUICKLY