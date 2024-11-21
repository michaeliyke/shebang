#!/usr/bin/env bash
clear

directory=${1-"$HOME"}

for file in "$( find $directory -maxdepth 1 -type l )"
do
echo "$file"
done | sort > /dev/null
