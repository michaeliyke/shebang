#!/usr/bin/env bash
clear

for i in 0 1 2 3 4 5 6 7 8 9
do
	echo -n "$i "
done
echo; echo

# Using seq start increment last
# seq start last
# seq last
for i in $(seq 0 1 9)
do
	echo -n "$i "
done
echo; echo

for i in {0..9} # Bash version 3+
{
	echo -n "$i "; # terminal ; required in a classic for x in [list] construct
}
echo; echo

for (( i=0; i< 9; i++ ))
do
	echo -n "$i "
done
echo; echo

for (( i=0, j=1; i< 9; i++, j++ ))
{
	echo -n "$j-$i "
}
echo; echo
