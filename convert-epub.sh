#!/bin/bash
export SOURCE_DATE_EPOCH=1734502630


PG="python $HOME/pyglossary/main.py"

$PG 100-en-fa.txt 100-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3
$PG 300-rand-en-fa.txt 300-rand-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3
