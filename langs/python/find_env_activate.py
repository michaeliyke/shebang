#!/usr/bin/python3
from find_env_bin import find_env_bin


def find_activate() -> str:
    env_bin_dirs = find_env_bin()
    if env_bin_dirs:
        return f'{env_bin_dirs[0]}/bin/activate'
    return ''


# Run the function if the script is run directly
if __name__ == '__main__':
    print(find_activate())
