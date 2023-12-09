#!/bin/bash

function setaliases()
{
	# open a book where aliases can be set
	local aliases_file="$CONF/aliases.sh"

	subl -w -n "$aliases_file"
}

function setalias()
{
	local alias_name=$1
	local value=$2
	local aliases_file="$CONF/aliases.sh"

	if(( $# == 0  )) || [ "$1" -eq "-h" ] || [ "$1" -eq "--help" ]; then
		echo "setalias new_aliase you_command"
	fi
	append $aliases_file "alias $alias_name='$value'"
	reload_configs
}

function reload_configs()
{
	# reload ~/.bashrc
	source ~/.bashrc

	# print a success message
	echo "Configurations reloaded successfully"
}


# WILL RUN BEFORE EACH COMMAND
function preexec()
{
    echo "Executing custom code before command: $1"
}

# WILL RUN AFTER EACH COMMAND
function precmd()
{
    # Custom code to execute before each prompt
		prompt_string
		if [ -f "$on_start_file" ]; then
			if [[ -z "$on_start" || "$on_start" -eq "0" ]]; then
				source "$on_start_file" # Only source if on_start is 0 or unset
			fi
		fi
}



function prompt_string()
{
	# ACTUAL prompt sring
	# deep green, grey, blue, grey
	unset PS1
	# PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\
	# \n($CONDA_DEFAULT_ENV)\$\[\033[00m\] '

	PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\
	\n\[\033[01;36m\]($CONDA_DEFAULT_ENV)\[\033[01;31m\] \$\[\033[00m\] '

	PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\
	\n\[\033[01;36m\]$([[ -n $CONDA_DEFAULT_ENV ]]&&echo "($CONDA_DEFAULT_ENV) ")\
\[\033[01;31m\]\$\[\033[00m\] '

	# output:
	# λ:~
	#(base) $ 

	# The window title
	PS1="\[\e]0;MICHAEL IYKE (alx)   -   $(date '+%d/%m %H:%M')\a\]$PS1"
	# Restore ls color support
	ls_color
}
# PS1+=\" [$ {cyan}]<$ ($CONDA_DEFAULT_ENV)> \"
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
