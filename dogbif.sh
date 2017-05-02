sqlite3 gbif.sqlite < schema.sql
echo ".mode tabs\n.header off\n.import Taxon.tsv gbif" | sqlite3 gbif.sqlite
echo "CREATE UNIQUE INDEX id on gbif (taxonID);" | sqlite3 gbif.sqlite
echo "\nall done!"
