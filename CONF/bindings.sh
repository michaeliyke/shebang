#!/bin/bash

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
