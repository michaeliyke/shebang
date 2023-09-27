# This page will be added to the precmd function
# which executes after every command
# However, we'll control it to execute only once
# By setting a valiable
echo HERE TOO
ERROR=1 # An error occured
SET_SUCCESS=0 # on_start was set in this session
ALREADY_SET_SUCCESS=2 # on_start was set earlier

# on_start already set to 1
if (( $on_start==1 )); then
	return $ALREADY_SET_SUCCESS
	# on_start was set to unknown value
elif [ "$on_start" -ne "0" ]; then
	return $ERROR
fi

# If on_start is 0, it was purposely to reset on_start
if (( $on_start == 0 )); then
	on_start=1
fi

if [ -z "$on_start" ]; then
	on_start=1
fi


clear

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

return $SET_SUCCESS
