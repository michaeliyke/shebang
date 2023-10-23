#!/bin/bash
#+ PERSONAL TERMINAL ALIASES

# BIND ENTER KEY TO A CUSTOM FUNCTION
# bind -x '"\C-M": preexec'

# Enable preexec and precmd functions
# sets up preexec function to be executed before each command.
# trap 'preexec' DEBUG
# sets up the precmd function to be executed after each command.
PROMPT_COMMAND='precmd'

# Override the defualt prompt string and window title
# Also restores ls color suppor
PS1='λ:\w\n$ '
# prompt_string

export {michaeliyke,michael,mybin,bin}="$USER_BIN"
export {bashrc,rc,config,conf}="$bashrc_path"

alias {vag,vg}='valgrind'

export CURRENT_WORKING_DIR=

export test_putchar=$michael/test_putchar
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
# PATH="$HOME/bin:$URRENT_WORKING_DIR"


# Default value if var not defined or defined but is null
: {$user_bin:-~/bin}
bashrc_path=~/.bashrc


# AUTO FUNTIONS
# THESE ARE AUTOMATICALLY RECOGNIZED BY BASH
source "$user_bin/functions.sh"
on_start_file="$bin/on_start.sh"
FUNCTIONS_LOADED=1
