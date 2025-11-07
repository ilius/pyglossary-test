#!/bin/bash
set -e
set -x

PG="python $HOME/pyglossary/main.py"

$PG Currency_In_Each_Country.bgl Currency_In_Each_Country.txt
$PG Farsi_Aviation_Dictionary.bgl Farsi_Aviation_Dictionary.txt
$PG Flavours_of_Malaysia.bgl Flavours_of_Malaysia.txt
$PG Solar_Physics_Glossary.bgl Solar_Physics_Glossary.txt

$PG 100-en-de.tei 100-en-de-v5.txt
$PG freedict-sample-2024-12-19.tei freedict-sample-2024-12-19-v2.txt

$PG 004-bar.txt 004-bar.json
$PG 004-bar.txt 004-bar.sd/004-bar.ifo --write-options=dictzip=False

$PG 100-en-fa.txt 100-en-fa.csv
$PG 100-en-fa.txt 100-en-fa.json
$PG 100-en-fa.txt 100-en-fa.info
$PG 100-en-fa.txt 100-en-fa-sd-v2/100-en-fa.ifo --write-options=dictzip=False
$PG 100-en-fa-sd-v2/100-en-fa.ifo 100-en-fa-sd-v2.txt
$PG 100-en-fa.txt 100-en-fa-lower.txt --lower
$PG 100-en-fa.txt 100-en-fa-rtl.txt --rtl
$PG 100-en-fa.txt 100-en-fa-remove_html_all-v3.txt --remove-html-all
$PG 100-en-fa.txt 100-en-fa-sort-headword.txt --sort --sort-key=headword
$PG 100-en-fa.txt 100-en-fa-sort-headword-fa.txt --sort --sort-key=headword:fa

mkdir -p 100-en-fa-sd-nostt
$PG 100-en-fa.txt 100-en-fa-sd-nostt/100-en-fa.ifo \
	"--write-options=dictzip=False;sametypesequence=-"

$PG 100-en-fa.txt 100-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3
$PG 300-rand-en-fa.txt 300-rand-en-fa-prefix3-v2.epub --write-options group_by_prefix_length=3

$PG 100-en-de-v4.txt 100-en-de-v4.csv
$PG 100-en-de-v4.txt 100-en-de-v4.json
$PG 100-en-de-v4.txt 100-en-de-v4.info
$PG 100-en-de-v4.txt 100-en-de-v4-sd-v2/100-en-de-v4.ifo --write-options=dictzip=False
$PG 100-en-de-v4.txt 100-en-de-v4-remove_font_b.txt --remove-html 'font,b'

MERGE_SYNS_ARGS="--write-format StardictMergeSyns --write-options=dictzip=False"

$PG 100-en-fa.txt 100-en-fa-sd-merge-syns-v2/100-en-fa.ifo $MERGE_SYNS_ARGS
$PG 100-en-de-v4.txt 100-en-de-v4-sd-merge-syns-v2/100-en-de-v4.ifo $MERGE_SYNS_ARGS
$PG 002-plain-html.txt 002-plain-html-sd-merge-syns-v2/002-plain-html.ifo $MERGE_SYNS_ARGS
$PG 004-plain-html-alts.txt 004-plain-html-alts-sd-merge-syns-v2/004-plain-html-alts.ifo $MERGE_SYNS_ARGS

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
