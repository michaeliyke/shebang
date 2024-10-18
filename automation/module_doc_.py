#!/usr/bin/python3
"""Testing documentation of a module
"""
from importlib import import_module
import sys
import os

# Run a command to generate file names for testing
os.system("list_python_files")
os.system("touch python_files.txt")

with open("python_files.txt", "r") as f:
    for line in f:
        file = line.strip()
        if file.endswith("__init__.py"):
            print(f"File: {file}")
            continue
        m_imported = import_module(line.strip())
        if m_imported.__doc__ is None:
            print("No module documentation", end="")
            print(f" in {line.strip()}")
        else:
            print("OK", end="")
os.system("rm python_files.txt")
