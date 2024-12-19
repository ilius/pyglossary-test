PG="python $HOME/pyglossary/main.py"

$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran.txt
$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran-category.txt --read-options=categories=1

$PG 10-kaikki-fa-pos-adv.jsonl 10-kaikki-fa-pos-adv.txt
$PG 10-kaikki-fa-pos-adv.jsonl 10-kaikki-fa-pos-adv-word_title.txt --read-options=word_title=1
