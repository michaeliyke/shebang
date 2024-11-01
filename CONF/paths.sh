#!/bin/bash

bin=${bin:-"$HOME/bin"}
# LOAD CUSTOM PATHS

# DROP A PATH IN BELOW ARRAY
cust_bin_paths=(
	"$bin/core" # bin inside of bin where proven tokens stand out
	"$bin/extras" # extras
	"$bin/commons" # commons
	"$bin/commons/logging" # commons
	"$bin/commons/server" # commons

	# OTHERS BELOW
	"$bin/bash" # commons
	"$bin/c" # commons
	"$bin/git" # commons
	"$bin/test" # commons
	"$bin/AirBnB_clone" # commons
	"$bin/AirBnB_clone/automation" # commons
	"$bin/automation" # commons
	"$bin/configs" # commons
	"$bin/configs/W3C-Validator" # commons
	"$bin/validators" # commons
	"$bin/misc" # commons
	"$bin/langs/" # commons
	"$bin/langs/python" # commons
	"$bin/langs/c" # commons
	"$bin/langs/go" # commons
	"$bin/langs/node" # commons

)

# WILL BE LOADED BY load_paths FUNCTION WHICH WILL BE EXECUTED
# FOR EVERY COMMAND TO MAKE NEW PATHS REFLECT QUICKLY

# In bash, $array - first element - like *array in C
# ${array[0]} - same result as above but more readable
# ${array[1]} - 2nd element of array
# ${array[2]} - 3rd element of array
# ${array[N]} - (N-1)th element of array
# ${array[@]}, ${array[*]} and "${array[*]}" - Single string with IFS as separator or space
# "${array[@]}" - Multiple strings with each element of the array as a separate string
# and strings are separated by th IFS

# RANGE:
# ${array[@]:offset:length}
# echo "${array[@]:0:3}" from 0,to 2


# IFS = Internal Field Separator. Default is space
cust_bin_paths=$(IFS=:; echo "${cust_bin_paths[*]}")

# Only use the first element of cut_bin_paths - sorta like *cust_bin_paths in C
# Use that for now till we know why the cust_bin_paths could not be completely
# overwritten as viewed from ${cust_bin_paths[@]} or ${cust_bin_paths[*]}
# It still includes some elements of the old array values
# echo "$cust_bin_paths"

export PATH="$PATH:$cust_bin_paths"


# In Bash, ${array[*]} -> puts all elements of $array
# into one single string separated by the value of line terminator (IFS).
# The default value of IFS is a newline character
# NOTE: Below, we change IFS to colon (:) to get a list of paths separated by a colon
# cust_bin_paths=$(IFS=:; echo "${cust_bin_paths[*]}")

# Only use the first element of cut_bin_paths - sorta like *cust_bin_paths in C
# Use that for now till we know why the cust_bin_paths could not be completely
# overwritten as viewed from ${cust_bin_paths[@]} or ${cust_bin_paths[*]}
# It still includes some elements of the old array values
# echo ${#array[*]} # array length
# echo ${#array[@]} # array length
# mike=$(IFS=:;echo "${cust_bin_paths[*]}")
# iyke=$(IFS=:;echo "${cust_bin_paths[@]}")
# echo "${#mike[@]}" # 1
# echo "${#mike[@]}" # 1
# echo "${#mike}" # 512
# echo "${#iyke}" # 512
#
# echo "${mike}" # one string joined by : due to [*]. Used new IFS
# echo "${iyke}" # Single string joined by space due t0 [@]. Used default IFS
# IFS=#;echo "${cust_bin_paths[@]}"
# echo "${cust_bin_paths[*]}"

# echo ${cust_bin_paths[@]:0:3} #ONLY three elements
# for i in {0..2}; do echo "${cust_bin_paths[i]}"; done # ONLY three elemts

