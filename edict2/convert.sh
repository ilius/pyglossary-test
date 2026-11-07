#!/bin/bash
set -e
set -x

PG="python $HOME/pyglossary/main.py"

$PG 24-cedict.u8 24-cedict-v2.txt

$PG 24-cedict.u8 24-cedict-v2-trad.txt --read-options traditional_title=True

$PG 24-cedict.u8 24-cedict-v2-nocolor.txt --read-options colorize_tones=False

$PG 24-cedict.u8 24-cedict-v2-links.txt --read-options link_references=True

