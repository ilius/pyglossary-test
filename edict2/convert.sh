#!/bin/bash
set -e
set -x

PG="python $HOME/pyglossary/main.py"

$PG 024-cedict.u8 024-cedict.txt

$PG 024-cedict.u8 024-cedict-trad.txt --read-options traditional_title=True

$PG 024-cedict.u8 024-cedict-nocolor.txt --read-options colorize_tones=False

$PG 024-cedict.u8 024-cedict-links.txt --read-options link_references=True

