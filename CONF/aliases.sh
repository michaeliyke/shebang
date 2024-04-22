#!/bin/bash
#+ PERSONAL TERMINAL ALIASES


alias py="python"
alias {vag,vgr,vagr}='valgrind'
alias vg=vagrant
alias vgu="vg up"
alias vgus="vg up && vg ssh"
alias vgsu="vg up && vg ssh"
alias vgs="vg ssh"

alias {sch,shch,shchck,shchk,schk,schck,scheck}="shellcheck"

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

alias {reload,reload_path,reload_conf,reload_bash,reload_rc,reload_bashrc}='reload_configs'
alias aliases='setaliases'
alias variables='setvariables'
alias paths='setpaths'
alias python='python3'
alias {terminal,term,shell,cmd}='gnome-terminal'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -CF'
alias l='git log -1'
alias ls='ls -AF'
alias {pyc,pcs,codestyle,cs}="pycodestyle"
alias {mk_exec,makeexec,mkexec,makexec,mk,mk_,mke,mk_e}="make_exec"

# The tldr command for summarizing the contents of man
alias {vl,verylong,long,very,vldr,dr,toolong,tl,toolongdidntread}="tldr"
