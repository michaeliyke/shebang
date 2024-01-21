#!/bin/bash

# Default value if var not defined or defined but is null
: {$USER_BIN:-~/bin}
# : {$bashrc_path:-~/.bashrc}

bashrc_path=~/.bashrc

export {michaeliyke,michael,mybin,bin}="$USER_BIN"
export {bashrc,rc,config,conf}="$bashrc_path"

export CURRENT_WORKING_DIR=
export test_putchar=$michael/test_putchar
# PATH="$HOME/bin:$URRENT_WORKING_DIR"

# ENVIRONMENT VARS
export PYFILE=main.py
export PYCODE="print('Alx school')"
export PYNGUIN_DANGER_AWARE="YES"
