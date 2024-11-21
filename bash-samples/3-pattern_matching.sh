#!/usr/bin/env bash
clear

# ${!varprefix*}, ${!varprefix@}
# Matches names of all previously declared variables beginning with varprefix.
xyz23=whatever
xyz24=
a="${!xyz*}" # Expands to *names* of decalred varaibles beginning with zyz
echo
echo "a: $a"
a="${!xyz@}" # Same as above
echo "a: $a"
echo --------
echo

abc=something_else
b="${!abc*}" # abc23
echo "b: $b"
echo -------
echo

c="${!b}"
echo "c: $c"
