#!/usr/bin/env bash
clear

F="
	/usr/sbin/accept
	/usr/sbin/pwck
	/usr/sbin/chroot
	/usr/bin/fakefile
	/sbin/badblocks
	/sbin/ypbind" # This is not an array but is used as if it were one

i=0
for f in $F
	do
	echo "$i: $f"
	((i++))
done

F=($F) # make F an array
echo "${#F[@]}" # 6
echo "${#F}" # 16

function has_m_flag()
{
	[[ "$1" == -* && "$1" == *m* && "$1" != --* ]] && return 0
	return 1
}

if has_m_flag "-m"; then echo "YES"; fi