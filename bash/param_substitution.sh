#!/usr/bin/env bash
clear
# ${parameter+alt_value}, ${parameter:+alt_value}
# If parameter set, use alt_value, else use null string.

#CASE: ${parameter+alt}
a=${x+xyz}
echo "\$x is not set, so it will be used: $a" # empty

y=
a=${y+xyz}
echo "It was set so, alt will be used: $a"
z=123
a=${z+xyz}
echo "It was set and has value too, alt will be used: $a"
unset x
echo
echo
echo

#CASE: ${parameter:+alt}
a=${x:+xyz}
echo "\$x is not set, so it will be used: $a" # empty

y=
a=${y:+xyz}
echo "It was set so, alt will NOT be used: $a"
z=123
a=${z:+xyz}
echo "It was set and has value too, alt will NOT be used: $a"
