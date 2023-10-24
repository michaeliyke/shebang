#!/bin/bash

# Functions for quick navigation on the command line

# CD FUNCTIONS
function cdprintf()
{
	cd ~/alx/projects/printf/
	echo "Welcome to printf space"
}

function cdfx()
{
	cd "$FX"
	echo "Welcome to FX space"
}

function cdconf()
{
	cd "$CONF"
	echo "Welcome to CONF space"
}



function cdalx()
{
	cd ~/alx
	echo "Welcome to Alx space"
}


function cdiyke()
{
	cd ~/bin
	echo "Welcome to bin space"
}

# 
function cdhome()
{
	cd ~
	echo "Welcome to ${USER}'s space"
}

function cdlowlevel()
{
	cd ~/alx/alx-low_level_programming/
	echo "Welcome to the Alx Low Level Programming space"
}

function lowlevel()
{
	return~/alx/alx-low_level_programming/
	echo "Welcome to the Alx Low Level Programming space"
}

