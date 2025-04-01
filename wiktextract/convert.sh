PG="python $HOME/pyglossary/main.py"

$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran-v2.txt
$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran-category-v2.txt --read-options=categories=1

$PG 10-kaikki-fa-pos-adv.jsonl 10-kaikki-fa-pos-adv-v2.txt
$PG 10-kaikki-fa-pos-adv.jsonl 10-kaikki-fa-pos-adv-word_title-v2.txt --read-options=word_title=1

$PG 03-kaikki-fa-selection.jsonl 03-kaikki-fa-selection-v2.txt
