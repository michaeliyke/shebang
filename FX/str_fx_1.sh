#!/bin/bash


#  Strip possible leading zero(s)
#+ from the argument passed
#  The "1" refers to "$1"
#  The "0" is what to remove - strip zero(s)
strip_leading_zero()
{
	return=${1#0}
}
