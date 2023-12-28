#!/usr/bin/env bash
clear
var=${HOSTNAME} # michaeliyke-HP-ProBook-4540s
: ${var?:} # error if empty


# 1-ONE
# VARIABLE LENGTH - LIKE STRING LENGTH OF THE VARAIBLE
len=${#var}
echo "\$var: $var, len: $len"
echo ----------------------------------
echo

# 2-TWO
# ARGUMENTS LIST LENGTH
len=${#@} # Number of positional parameters
echo "Params: ${@}: ${len}"
len=${#*} # Same as above
echo "Params: ${*}: ${len}"
echo ---------------------------------
echo

# 3-THREE
# ARRAY LENGTH
arr=(Michael Iyke Ike Ajogwu Dairo)
len_ch=${#arr} # strlen of the arr[0]
len=${#arr[@]} # Array len
echo "arr: ${arr[@]}"
echo
echo "arr: chars: ${len_ch}, array len: ${len}"
len=${#arr[*]} # Array len
echo "arr: chars: ${len_ch}, array len: ${len}"
echo ---------------------------------
echo

# 4-FOUR
# STRING LENGTH
str="My name is michael iyke from the Tranchus"
len_ch=${#str}
echo "str: $str" # Length of the chars
echo "str len_ch: $len_ch"
len_w=${#str[@]}
echo "str: chars: ${len_ch}, words len: ${len_w}"
len_w=${#str[*]}
echo "str: chars: ${len_ch}, words len: ${len_w}"
echo ---------------------------------
echo

