#!/usr/bin/python3
import re
import sys
import os
# Source: https://chatgpt.com/share/67330450-e484-8005-9253-fcbccf9d992b


def hex_to_rgba(hex_str):
    try:
        # Remove '#' if present
        hex_str = hex_str.lstrip('#')

        # Check if the hex format is valid
        if not re.match(r'^[0-9a-fA-F]{3}$|^[0-9a-fA-F]{4}$|^[0-9a-fA-F]{6}$|^[0-9a-fA-F]{8}$', hex_str):
            raise ValueError("Invalid hex color format")

        # Expand shorthand notation (#RGB or #RGBA to #RRGGBB or #RRGGBBAA)
        if len(hex_str) == 3:
            hex_str = ''.join([ch * 2 for ch in hex_str]) + 'FF'
        elif len(hex_str) == 4:
            hex_str = ''.join([ch * 2 for ch in hex_str])
        elif len(hex_str) == 6:
            hex_str += 'FF'  # Assume full opacity if not provided

        # Convert hex pairs to RGB and alpha values
        r = int(hex_str[0:2], 16)
        g = int(hex_str[2:4], 16)
        b = int(hex_str[4:6], 16)
        a = int(hex_str[6:8], 16) / 255  # Alpha as a float between 0 and 1

        return f"rgba({r}, {g}, {b}, {a:.2f})"

    except ValueError as e:
        return f"Error: {str(e)}"


def test_hex_to_rgba():

    os.system('clear')

    print(hex_to_rgba('#f00'))  # rgba(255, 0, 0, 1.00)
    print(hex_to_rgba('#ff0000'))  # rgba(255, 0, 0, 1.00)
    print(hex_to_rgba('#f00f'))  # rgba(255, 0, 0, 1.00)
    print(hex_to_rgba('#ff0000ff'))  # rgba(255, 0, 0, 1.00)

    print()
    print(hex_to_rgba("#ccc"))        # rgba(204, 204, 204, 1.00)
    print(hex_to_rgba("#0f627e"))     # rgba(15, 98, 126, 1.00)
    print(hex_to_rgba("#ebea"))       # rgba(238, 187, 255, 0.67)
    print(hex_to_rgba("#eebbffaa"))   # rgba(238, 187, 255, 0.67)

    print()
    print(hex_to_rgba('#ff0000gg'))  # Error: Invalid hex color format
    print(hex_to_rgba('#ff000'))  # Output: Error: Invalid hex color format
    print(hex_to_rgba("#xyz"))        # Error: Invalid hex color format


if __name__ == '__main__':
    # test_hex_to_rgba()

    args = sys.argv[1:]
    print(hex_to_rgba(*args))
