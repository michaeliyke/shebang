#!/usr/bin/env bash
str=23skidool
# 012345678 bash i.e index starts from 0
# 123456789 awk i.e index starts from 1
echo ${str:2:2} # Gets 2 characters from position 3
echo ${str:2:4} # Gets 4 characters from position 3
echo ${str:5:4} # Gets 4 characters from position 5
