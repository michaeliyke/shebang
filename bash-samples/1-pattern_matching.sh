#!/usr/bin/env bash
clear
# NOTE: # and ## work from the left end of the string
# But the % and %% work from right to left end of the string

# ${var%Pattern}, ${var%%Pattern}
# ${var%Pattern} Remove from $var the shortest part of $Pattern that matches
# the back end of $var.
# ${var%%Pattern} Remove from $var the longest part of $Pattern that matches
# the back end of $var.
echo
shopt -s extglob
parent_path=${0%%+(*/)}
shopt -u extglob
echo $parent_path
echo
echo

v=abcd12345abc6789
pattern=a*c # A wildcard matching everything in-between a - c
echo "v=${v}"
echo "Number of chars in ${v} is ${#v}"

echo
echo
echo "The pattern is: ${pattern} - everything between a and c"
echo ---------------------------------------
echo "'$v#$pattern': ${v#$pattern}" # (shortest possible) strips off first 3
echo "'$v##$pattern': ${v##$pattern}" # (Longest possible) strips off first 12
echo
echo

# EXAMPLE 2
pattern=b*9 # Everything between b and 9
echo "'$v%$pattern': ${v%$pattern}" # (shortest possible) strips off last 6
echo "'$v%%$pattern': ${v%%$pattern}" # (Longest possible) strips off last 12
echo
echo



