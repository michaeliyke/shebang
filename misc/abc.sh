#!/usr/bin/env bash
# Display all .py files that do not end with a newline character
echo "All .py files that do not end with a newline character"
find . -type f -name "*.py" -exec sh -c 'tail -c 1 "$1" | grep -q -P "."' sh {} \; -print
