#!/bin/bash

MASTER_FILE="master_book.md"
rm -f "$MASTER_FILE"

echo "---" >"$MASTER_FILE"
echo "title: Poradnik Rodzica" >>"$MASTER_FILE"
echo "lang: pl-PL" >>"$MASTER_FILE"
echo "---" >>"$MASTER_FILE"
echo "" >>"$MASTER_FILE"

for file in *.md; do

  if [ "$file" == "$MASTER_FILE" ]; then
    continue
  fi

  #Header
  title=$(basename "$file" .md)
  echo "# $title" >>"$MASTER_FILE"
  echo "" >>"$MASTER_FILE"

  #Content
  cat "$file" >>"$MASTER_FILE"

done

echo "Created concatenated file: $MASTER_FILE"
