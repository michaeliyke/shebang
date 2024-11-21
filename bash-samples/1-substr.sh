#!/usr/bin/env bash
# ${VAR:POS} - var expands starting from pos
# ${VAR:POS:LEN} - var expands from pos to a max of len
clear
s="https://michaeliyke:ghp_tId4nvZ2u@github.com/michaeliyke/shebang.git"
echo "${s:8}" # chops off the https:// part
echo ---------------------------------------------------------
echo
# ${VAR/PATTERN/REPLACEMENT}
# First match of Pattern, within var replaced with Replacement
# If Replacement is omitted, then the first match of Pattern is replaced by empty

# ${VAR//PATTERN/REPLACEMENT}
# Global replacement.
# All matches of Pattern, within var replaced with Replacement.
# if Replacement is omitted, then all occurrences of Pattern are replaced by empty
v="abcd-1234-defg"
t=${v#*-*} # strip until the first hyphen (-) inclusive
echo "$v#*-*: $t"
echo --------------------------------------------------
echo

t=${v##*-*} # strip until the first hyphen (-) inclusive
echo "$v##*-*(Empty): $t"
echo -------------------------------------------------
echo

t=${v%*-*}
echo "$v%*-*: $t"
echo -------------------------------------------------
echo

t=${v%%*-*}
echo "$v%%*-*: $t"
echo ------------------------------------------------
echo

pathname="/home/bozo/ideas/thoughts.for.today"
t=${pathname##*/}
echo "$pathname##*/: $t"
echo ------------------------------------------------
echo

t=${pathname##/*}
echo "$pathname##/*: $t"
echo ------------------------------------------------
echo

t=${pathname##/*/}
echo "$pathname##/*/: $t"
echo ------------------------------------------------
echo
# t=${pathname%/}; t=${t##*/} is a more general solution
#+ but still fails sometimes.
# If $pathname ends with a newline, then `basename $pathname` will not work,
#+ but the above expression will.
# (Thanks, S.C.)

t=$(dirname $pathname)
echo "$dirname $pathname: $t"
t=${pathname%/*.*}
echo "$pathname%/*.*: $t"
echo -------------------------------------------
echo
