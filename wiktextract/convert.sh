PG="python $HOME/pyglossary/main.py"

$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran.txt
$PG 10-kaikki-fa-PlacesInIran.jsonl 10-kaikki-fa-PlacesInIran-category.txt --read-options=categories=1
