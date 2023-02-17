#!/bin/bash

NAME=092-en-fa-alphabet-sample

pyglossary $NAME.txt $NAME-sorted-default.txt --sort

pyglossary $NAME.txt $NAME-sorted-en.txt --sort --sort-locale en_US.UTF-8

pyglossary $NAME.txt $NAME-sorted-fa.txt --sort --sort-locale fa_IR.UTF-8

pyglossary $NAME.txt $NAME-sorted-latin-fa.txt --sort --sort-locale fa-u-kr-latn-arab
# --sort-key :fa-u-kr-latn-arab

