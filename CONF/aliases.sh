#!/bin/bash
#+ PERSONAL TERMINAL ALIASES



alias {vag,vgr,vagr}='valgrind'
alias vg=vagrant
alias vgu="vg up"
alias vgus="vg up && vg ssh"
alias vgs="vg ssh"

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

alias {reload,reload_path,reload_conf,reload_bash,reload_rc,reload_bashrc}='reload_configs'
alias aliases='setaliases'
alias python='python3'
alias {terminal,term,shell,cmd}='gnome-terminal'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -CF'
alias l='git log -1'
alias ls='ls -AF'
