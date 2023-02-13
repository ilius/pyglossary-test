#!/usr/bin/python3

import sys

for fpath in sys.argv[1:]:
	with open(fpath, mode="rb") as inFile:
		text = inFile.read()
	text = text.replace(b"\r\n", b"\n")
	with open(fpath, mode="wb") as outFile:
		outFile.write(text)
