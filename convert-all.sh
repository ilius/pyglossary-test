#!/bin/bash
PG="$HOME/pyglossary/main.py"

"$PG" 004-bar.txt 004-bar.json
"$PG" 004-bar.txt 004-bar.sd/004-bar.ifo --write-options=dictzip=False

"$PG" 100-en-fa.txt 100-en-fa.csv
"$PG" 100-en-fa.txt 100-en-fa.json
"$PG" 100-en-fa.txt 100-en-fa.info
"$PG" 100-en-fa.txt 100-en-fa.sd/100-en-fa.ifo --write-options=dictzip=False
"$PG" 100-en-fa.txt 100-en-fa-lower.txt --lower
"$PG" 100-en-fa.txt 100-en-fa-rtl.txt --rtl
"$PG" 100-en-fa.txt 100-en-fa-remove_html_all.txt --remove-html-all

"$PG" 100-en-de.txt 100-en-de.csv
"$PG" 100-en-de.txt 100-en-de.json
"$PG" 100-en-de.txt 100-en-de.info
"$PG" 100-en-de.txt 100-en-de.sd/100-en-de.ifo --write-options=dictzip=False
"$PG" 100-en-de.txt 100-en-de-remove_font_b.txt --remove-html 'font,b'

"$PG" 100-ja-en.txt 100-ja-en.csv
"$PG" 100-ja-en.txt 100-ja-en.json
"$PG" 100-ja-en.txt 100-ja-en.info
"$PG" 100-ja-en.txt 100-ja-en.sd/100-ja-en.ifo --write-options=dictzip=False
