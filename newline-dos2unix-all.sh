#!/bin/bash
set -e
# set -x

myPath=$(realpath "$0")
myDir=$(dirname "$myPath")

find . -print \( \
    -name '*.txt' -or \
    -name '*.csv' -or \
    -name '*.df' -or \
    -name '*.dictunformat' -or \
    -name '*.dsl' -or \
    -name '*.ifo' -or \
    -name '*.info' -or \
    -name '*.json' -or \
    -name '*.ldf' -or \
    -name '*.tei' -or \
    -name '*.xdxf' -or \
    -name '*.xml' \
\) -exec python $myDir/newline-dos2unix.py '{}' \;
