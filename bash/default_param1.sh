#!/usr/bin/env bash

# ${parameter=default}, ${parameter:=default}
# If parameter not set, set it to default.

#CASE: ${parameter=default}
#

# v is not set at all
v=${v=abc}
echo $v # says abc because it was not set
v=${v=xyz}
echo $v # says abc because it was already set
v=
v=${v=xyz}
echo $v # says empty because it was already set
unset v

#CASE: ${parameter:=default}
# v is not set at all
v=${v:=abc}
echo $v # says abc because it was not set
v=${v:=xyz}
echo $v # says abc because it was already set
v=
v=${v:=xyz}
echo $v # says xyz because though it was set, it was empty

