#!/usr/bin/python3
"""
Get and print the pid of a process using information from the tmp file
Where:
tmp: is the filename of the file with process information
"""
import sys
import os


def print_usage_and_exit():
    print("Usage: {} tmpfile_path".format(sys.argv[0]))
    sys.exit(1)


if len(sys.argv) != 2:
    print_usage_and_exit()

tmp = sys.argv[1]
if tmp == "":
    print_usage_and_exit()

if not os.path.exists(tmp):
    print("Error: {file} not found".format(file=tmp))
    exit(1)

tmpfile = open(tmp, "r")
for line in tmpfile:
    last_line = line.strip() if len(line) > 5 else last_line

sline = last_line.split("  ")
print(sline[1].strip())