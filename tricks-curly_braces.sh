#  ${var##Pattern} Remove from $var the longest part
#+ of $Pattern that matches the front end
#  ${var#Pattern}, ${var##Pattern}
#+ ${var#Pattern} Remove from $var the shortest part of
#+ $Pattern that matches the front end of $var.

# Basename of current working directory
echo $(basename PWD)
# Basename of current working directory
echo "${PWD##*/}"
echo


# Name of script
echo $(basename $0)
# Name of script
echo $0
echo "${0##*/}"
echo

filename=text.data
# Extension of filename
echo "${filename##*.}"


#  ${var%Pattern}, ${var%%Pattern}
#+ ${var%Pattern} Remove from $var the shortest part of
#+ $Pattern that matches the back end of $var.
#+ ${var%%Pattern} Remove from $var the longest part of
#+ $Pattern that matches the back end of $var.

