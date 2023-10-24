#!/bin/bash

clear

source "core_fx_1.sh"

echo
echo FOUND THESE
echo
f1=file_fx_1.sh
f2=FILE_FX.sh
f3=quick_nav_fx_1.sh

if exists $f1; then echo "$f1 Exists"; fi
if exists $f2; then echo "$f2 Exists"; fi
if exists $f3; then echo "$f3 Exists"; fi

echo
echo NOT FOUND
echo
f1=file_fx_1.txt
f2=FILE_FX.txt
f3=quick_nav_fx_1.txt

if ! exists $f1; then echo "$f1 Does Not Exists"; fi
if ! exists $f2; then echo "$f2 Does Not Exists"; fi
if ! exists $f3; then echo "$f3 Does Not Exists"; fi
