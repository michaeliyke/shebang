#!/bin/bash

# PERSONAL BASH FUNCTIONS FOR FUN

# WILL RUN BEFORE EACH COMMAND
function preexec() {
    		echo "Executing custom code before command: $1"
}

# WILL RUN AFTER EACH COMMAND
function precmd() {
    # Custom code to execute before each prompt
		prompt_string
}


#  Strip possible leading zero(s)
#+ from the argument passed
#  The "1" refers to "$1"
#  The "0" is what to remove - strip zero(s)
strip_leading_zero()
{
	return=${1#0}
}


function prompt_string()
{
	# ACTUAL prompt sring
	# deep green, grey, blue, grey
	unset PS1
	PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\n\$\[\033[00m\] '
	# The window title
	PS1="\[\e]0;PT NG         $(date '+%d/%m %H:%M')\a\]$PS1"
	# Restore ls color support
	ls_color
}

function ls_color()
{
	if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
	fi
}