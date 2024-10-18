#!/usr/bin/env python3
# Get the endianness of a system
import sys
if sys.byteorder == 'little':
    print('LE')
else:
    print('BE')
