#!/usr/bin/env bash

# Parameter substitution
id=${USER}-on-${HOSTNAME}
# echo $id
path="dir1:dir2:dir3"
path=${path}:dir4
# echo $path

# ${parameter-default} and ${parameter:-default}
# -default - sets if x is not set at all
# :-default - sets if x is not set at all or is defined but is empty

# f0 is unset at this moment
f0=${f0-"folder0"}
echo $f0 # says f0 - since f0 has never been set before
f0=${f0-"folder1"}
echo $f0 # says folder0 - because it has already been set!
f0=
f0=${f0-"folder2"}
echo $f0 # still says folder1 - because it has already been set!


# f1 is unset at this moment
f1=${f1:-"folder1"}
echo $f1 # says folder1 - since f1 has never been set before
f1=${f1:-"folder2"}
echo $f1 # says folder1 - because it has already been set and not empty!
f1=
f1=${f1:-"folder2"}
echo $f1 # says folder2 - because it is now empty!

# SHINES WELL IN DEFAULT PARAMETER CASES LINE FILE NAME
# DEFAULT_FILENAME=generic.data
# filename=${1:-$DEFAULT_FILENAME}
