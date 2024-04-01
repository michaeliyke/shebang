#!/bin/bash

bin=${bin:-"$HOME/bin"}
# LOAD CUSTOM PATHS

# DROP A PATH IN BELOW ARRAY
cust_bin_paths=(
	"$bin/core" # bin inside of bin where proven tokens stand out
	"$bin/extras" # extras
	"$bin/commons" # commons

	# OTHERS BELOW
	"$bin/bash" # commons
	"$bin/c" # commons
	"$bin/git" # commons
	"$bin/test" # commons
	"$bin/AirBnB_clone" # commons
	"$bin/AirBnB_clone/automation" # commons
	"$bin/configs/W3C-Validator" # commons
	"$bin/validators" # commons
	"$bin/misc" # commons

)

# WILL BE LOADED BY load_paths FUNCTION WHICH WILL BE EXECUTED
# FOR EVERY COMMAND TO MAKE NEW PATHS REFLECT QUICKLY

# # Below -s ensures single : each
cust_bin_paths=$(IFS=:; echo "${cust_bin_paths[*]}")

# Only use the first element of cut_bin_paths - sorta like *cust_bin_paths in C
# Use that for now till we know why the cust_bin_paths could not be completely
# overwritten as viewed from ${cust_bin_paths[@]} or ${cust_bin_paths[*]}
# It still includes some elements of the old array values
# echo "$cust_bin_paths"

export PATH="$PATH:$cust_bin_paths"
