#!/usr/bin/python3
import os
from pathlib import Path
from typing import List


# Loop through all the 'folder' in $PWD and
# check which of them has a sub-folder named 'bin'
# containing a file named activate
def find_env_bin() -> List[str]:
    folders = [folder for folder in os.listdir() if os.path.isdir(folder)]
    env_bin = []
    for folder in folders:
        if 'bin' in os.listdir(folder):
            if 'activate' in os.listdir(f'{folder}/bin'):
                env_bin.append(folder)
    return env_bin


def find_activate() -> str:
    env_bin = find_env_bin()
    if env_bin:
        return f'{env_bin[0]}/bin/activate'
    return ''


# Run the function if the script is run directly
if __name__ == '__main__':
    bins = find_env_bin()
    print(bins[0] if bins else '')
