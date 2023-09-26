#!/bin/bash
#+ PERSONAL TERMINAL ALIASES

# AUTO FUNTIONS
# THESE ARE AUTOMATICALLY RECOGNIZED BY BASH

# If usr_bin isn't set, set it
: {$user_bin-~/bin}
bashrc_path=~/.bashrc
source "$user_bin/functions.sh"

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
prompt_string

export {michaeliyke,michael,mybin,bin}="$user_bin"
export {bashrc,rc,config,conf}="$bashrc_path"

alias {vag,vg}='valgrind'

export CURRENT_WORKING_DIR=

export test_putchar=$michael/test_putchar
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
# PATH="$HOME/bin:$URRENT_WORKING_DIR"
