#!/bin/bash

function setaliases()
{
	# open a book where aliases can be set
	local aliases_file="$CONF/aliases.sh"

	subl -a "$aliases_file:1" # Open file in currently opened window,jump to line 1
	# subl -n "$aliases_file"
}

function setvariables()
{
	# open a book where environment variables can be set
	local variables_file="$CONF/variables.sh"

	subl -a "$variables_file:1" # Open file in currently opened window,jump to line 1
	# subl -n "$variables_file"
}

# Opens up the paths configuration file for editing
function setpaths()
{
	# open a book where paths can be set
	local paths_file="$CONF/paths.sh"

	subl -a "$paths_file:1" # Open file in currently opened window,jump to line 1
	# subl -n "$paths_file"
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

# Function to detect if python virtual environment is active
function is_env_active()
{
	# Check if the current directory is a git repository
	if git rev-parse --is-inside-work-tree &>/dev/null; then
		# Parse the git branch name
		git branch 2>/dev/null | sed -n '/^\*/s/^\* //p'
	fi
}

# This function returns the right virtual environment to activate
# If the python virtual environment is active, it returns the name of the virtual environment
# else, it returns the string of $CONDA_DEFAULT_ENV
# NB: status code is returned by 'return' while return value is returned by 'echo'
function detect_env() {
	# Check if a venv or virtualenv env is active
    if [[ -n "$VIRTUAL_ENV" && -d "$VIRTUAL_ENV" ]]; then
        my_env=$(basename "$VIRTUAL_ENV")
		echo "$my_env"
		return 0
    fi

	# Check if a conda env is active
	if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        echo "$CONDA_DEFAULT_ENV"
		return 0
    fi
	# No env is active
	echo ""
	return 1
}



function prompt_string()
{
	# ACTUAL prompt sring
	# deep green, grey, blue, grey
	unset PS1
	# PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\
	# \n($CONDA_DEFAULT_ENV)\$\[\033[00m\] '

	# The prompt string to include the python virtual environment name
	my_env=$(detect_env)

	PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]\
	\n\[\033[01;36m\]($CONDA_DEFAULT_ENV)\[\033[01;31m\] \$\[\033[00m\] '

	PS1='\[\033[01;38;5;28m\]λ\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\
	\n\[\033[01;36m\]$([[ -n $my_env ]]&&echo "($my_env) ")\
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
