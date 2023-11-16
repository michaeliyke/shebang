# This page will be added to the precmd function
# which executes after every command
# However, we'll control it to execute only once
# By setting a variable
ERROR=1 # Error code
SUCCESS=0 # Success code
ALREADY_SET=2 # Code to signal prior execution

# echo HERE

# on_start value 1
if (( on_start == 1 )); then
	return $ALREADY_SET
elif [[ $on_start -ne 0 ]]; then # value unknown
	return $ERROR
elif (( on_start==0 )); then # value 0, reset
	on_start=1
elif [ -z $on_start ]; then # value not set yet
	on_start=1
fi

# echo HERE 3

# clear

echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                                       "
echo "                                    _                 _"
echo "			      _   _| |__  _   _ _ __ | |_ _   _ "
echo "			     | | | | '_ \| | | | '_ \| __| | | |"
echo "			     | |_| | |_) | |_| | | | | |_| |_| |"
echo "			      \__,_|_.__/ \__,_|_| |_|\__|\__,_|"
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo

return $SUCCESS
