#!/usr/bin/env bash
# STEPS TO INSTALL THE BIN IN A SYSTEM
# BACKUP OF REPLACED FILES ARE MADE WITH _bak close to their names for safety

local conf=~/bin/configs/_bash_

# If the bin isn't cloned yet, quit
if [ ! -d "$conf" ]; then
	echo "The bin repo needs to be cloned first."
	exit 1
fi


# if the .bashrc file is missing in the bin repo, quit
# If there is a .bashrc file in home, we back it up
if [ -f $conf/.bashrc ]; then
	if [ -f ~/.bashrc ]; then
		[ -f ~/.bashrc_bak ] || cp ~/.bashrc ~/.bashrc_bak
	fi
	ln $conf/.bashrc ~ # Replaces the .bashrc at ~ with a hard link
	echo "Installed '.bashrc'"
else
	echo ".bashrc file missing in repo"
	exit 1;
fi


# If the .bash_aliases file is missing in the bin repo, quit
# If there is a .bash_aliases file in home, we back it up
if [ -f $conf/.bash_aliases ]; then
	if [ -f ~/.bash_aliases ]; then
		[ -f ~/.bash_aliases_bak ] || cp ~/.bash_aliases ~/.bash_aliases_bak
	fi
	# Replaces the .bash_aliases at ~ with a hard link
	ln $conf/.bash_aliases ~
	echo "Installed '.bash_aliases'"
else
	echo ".bash_aliases file missing in repo"
	exit 1;
fi


# If the .vimrc file is missing in the bin repo, skip
if [ -f $conf/.vimrc ]; then
	if [ -f ~/.vimrc ]; then
		[ -f ~/.vimrc_bak ] || cp ~/.vimrc ~/.vimrc_bak
	fi
	# Replaces the .vimrc at ~ with a hard link
	ln $conf/.vimrc ~
	echo "Installed '.vimrc'"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo ".vim file missing in repo, skiping"
fi

# Fire up a new bash session let's see

bash
