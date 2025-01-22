#!/bin/bash
#+ PERSONAL TERMINAL ALIASES


alias {activate_env,env_activate,my_env,myenv,activatenv,envactivate}="source ~/bin/commons/env_activate_script.sh"

alias py="python"
alias {vag,vgr,vagr}='valgrind'
alias vg=vagrant
alias vgu="vg up"
alias vgus="vg up && vg ssh"
alias vgsu="vg up && vg ssh"
alias vgs="vg ssh"
alias start="open"
# alias medm="python3 /home/michaeliyke/michaeliyke/projects/medm"

alias {sch,shch,shchck,shchk,schk,schck,scheck}="shellcheck"

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias {sp,st,spt}='speedtest'

alias {reload,reload_path,reload_conf,reload_bash,reload_rc,reload_bashrc}='reload_configs'
alias aliases='setaliases'
alias variables='setvariables'
alias paths='setpaths'
alias python='python3'
alias {terminal,term,shell,cmd}='gnome-terminal'
alias es='eslint *.js --fix'
alias esl="eslint"
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -CF'
alias l='git log -1'
alias ls='ls -AF'


alias mux='tmux' # Terminal Multiplexer
alias mx='tmux' # Terminal Multiplexer


alias {pyc,pcs,codestyle,cs}="pycodestyle"
alias {my,mp,myp}="mypy"
alias {mk_exec,makeexec,mkexec,makexec,mk,mk_,mke,mk_e}="make_exec"

# The tldr command for summarizing the contents of man
alias {vl,verylong,long,very,vldr,dr,toolong,tl,toolongdidntread}="tldr"

# Alx Directory Space
alias 'alx'='cd ~/alx/school/'
alias 'e-blog'='cd ~/alx/school/e-blog'
alias 'alx-backend-user-data'='cd ~/alx/school/alx-backend-user-data'
alias 'alx-backend'='cd ~/alx/school/alx-backend'
alias 'alx-backend-javascript'='cd ~/alx/school/alx-backend-javascript'
alias 'alx-backend-python'='cd ~/alx/school/alx-backend-python'
alias 'alx-backend-storage'='cd ~/alx/school/alx-backend-storage'
alias 'alx-files_manager'='cd ~/alx/school/alx-files_manager'
alias 'alx-interview'='cd ~/alx/school/alx-interview'
alias 'alx-higher_level_programming'='cd ~/alx/school/higher_level_programming'
alias 'alx-low_level_programming'='cd ~/alx/school/low_level_programming'
alias 'alx-other'='cd ~/alx/school/other'
alias 'alx-projects'='cd ~/alx/school/projects'
alias 'alx-system_engineering-devops'='cd ~/alx/school/system_engineering-devops'
alias 'bins'='cd ~/bin'