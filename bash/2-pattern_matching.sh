#!/usr/bin/env bash
clear
# ${var/#Pattern/Replacement}
# If prefix of var matches Pattern, then substitute Replacement for Pattern.
# ${var/%Pattern/Replacement}
# If suffix of var matches Pattern, then substitute Replacement for Pattern.

# DEMO OF PATTERN REPLACEMENT AT PREFIX / SUFFIX OF STRING

v="abc1234zip1234abc"

# PREFIX MATCHING
t="${v/#abc/ABCDEF}" # REPLACE PREFIX WITH ABCDEF
echo
echo "$v/#abc/ABCDEF: $t" # ABCDEF1234zip1234abc
echo -----
echo

# SUFFIX MATCHING
t="${v/%abc/ABCDEF}" # REPLACE PREFIX WITH ABCDEF
echo
echo "$v/%abc/ABCDEF: $t" # abc1234zip1234ABCDEF
echo -----
echo

# TESTING TESTING
t="${v/#123/000}" # REPLACE PREFIX WITH ABCDEF
echo
echo "$v/#123/000: $t" # abc1234zip1234ABCDEF - no effect
echo -----
echo

# TESTING TESTING
t="${v/%123/000}" # REPLACE PREFIX WITH ABCDEF
echo
echo "$v/%123/000: $t" # abc1234zip1234ABCDEF - no effect
echo -----
echo
