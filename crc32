#!/usr/bin/python3

import sys
from os.path import isdir
import struct
import binascii

def crc32hex(bs: bytes) -> str:
	return struct.pack('>I', binascii.crc32(bs) & 0xffffffff).hex()


for fname in sorted(sys.argv[1:]):
	if isdir(fname):
		continue
	if fname.endswith(".py"):
		continue
	with open(fname, mode="rb") as _file:
		data = _file.read()
	print(f'\t\t\t"{fname}": "{crc32hex(data)}",')
