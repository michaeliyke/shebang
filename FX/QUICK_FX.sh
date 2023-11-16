#!bin/bash

if [ -f $FX/quick_nav_fx_1.sh ]; then
	source $FX/quick_nav_fx_1.sh
	source $FX/quick_nav_fx_2.sh
fi

# compile c to a .so file
# function compile_lib()
# {
	# gcc -Wall -pedantic -Wextra -Werror -L . 
# }
# gcc -c -fPIC *.c - compile all to object files