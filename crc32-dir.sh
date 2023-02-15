#!/bin/bash

find "$@" -type f | xargs python ./crc32.py

