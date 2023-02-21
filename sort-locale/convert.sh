#!/bin/bash

NAME=092-en-fa-alphabet-sample

pyglossary $NAME.txt $NAME-sorted-default.txt --sort

pyglossary $NAME.txt $NAME-sorted-en.txt --sort --sort-key :en_US.UTF-8

pyglossary $NAME.txt $NAME-sorted-fa.txt --sort --sort-key :fa_IR.UTF-8

pyglossary $NAME.txt $NAME-sorted-latin-fa.txt --sort --sort-key :fa-u-kr-latn-arab
