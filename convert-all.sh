#!/bin/bash
PG="python $HOME/pyglossary/main.py"

$PG 004-bar.txt 004-bar.json
$PG 004-bar.txt 004-bar.sd/004-bar.ifo --write-options=dictzip=False

$PG 100-en-fa.txt 100-en-fa.csv
$PG 100-en-fa.txt 100-en-fa.json
$PG 100-en-fa.txt 100-en-fa.info
$PG 100-en-fa.txt 100-en-fa-sd-v2/100-en-fa.ifo --write-options=dictzip=False
$PG 100-en-fa.txt 100-en-fa-lower.txt --lower
$PG 100-en-fa.txt 100-en-fa-rtl.txt --rtl
$PG 100-en-fa.txt 100-en-fa-remove_html_all-v3.txt --remove-html-all

$PG 100-en-fa.txt 100-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3
$PG 300-rand-en-fa.txt 300-rand-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3

$PG 100-en-de-v4.txt 100-en-de-v4.csv
$PG 100-en-de-v4.txt 100-en-de-v4.json
$PG 100-en-de-v4.txt 100-en-de-v4.info
$PG 100-en-de-v4.txt 100-en-de-v4-sd-v2/100-en-de-v4.ifo --write-options=dictzip=False
$PG 100-en-de-v4.txt 100-en-de-v4-remove_font_b.txt --remove-html 'font,b'

$PG 100-ja-en.txt 100-ja-en.csv
$PG 100-ja-en.txt 100-ja-en.json
$PG 100-ja-en.txt 100-ja-en.info
$PG 100-ja-en.txt 100-ja-en.sd/100-ja-en.ifo --write-options=dictzip=False

$PG stardict-xdxf-2.xml stardict-xdxf-2.xml-h.txt --read-format StardictTextual --read-options=xdxf_to_html=true
$PG stardict-xdxf-2.xml stardict-xdxf-2.xml-x.txt --read-format StardictTextual --read-options=xdxf_to_html=false

$PG stardict-mixed-types-2.xml stardict-mixed-types-2.xml.txt --read-format StardictTextual
mkdir -p stardict-mixed-types-2.sd/
$PG stardict-mixed-types-2.xml stardict-mixed-types-2.sd/stardict-mixed-types-2.ifo \
	--read-format StardictTextual \
	--write-options=dictzip=False
$PG stardict-mixed-types-2.sd/stardict-mixed-types-2.ifo stardict-mixed-types-2.sd.txt




