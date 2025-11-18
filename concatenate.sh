#!/bin/bash

# Usage: ./script.sh [input_directory] [output_file]
#   input_directory - directory containing .md files (default: current directory)
#   output_file - name of the concatenated output file (default: master_book.md)

INPUT_DIR="${1:-.}"
OUTPUT_FILE="${2:-master_book.md}"

rm -f "$OUTPUT_FILE"

echo "---" >"$OUTPUT_FILE"
echo "title: Tytuł" >>"$OUTPUT_FILE"
echo "lang: pl-PL" >>"$OUTPUT_FILE"
echo "---" >>"$OUTPUT_FILE"
echo "" >>"$OUTPUT_FILE"

for file in "$INPUT_DIR"/*.md; do

  if [ "$file" == "$OUTPUT_FILE" ]; then
    continue
  fi

  #Header
  title=$(basename "$file" .md)
  echo "" >>"$OUTPUT_FILE"
  echo "" >>"$OUTPUT_FILE"
  echo "# $title" >>"$OUTPUT_FILE"
  echo "" >>"$OUTPUT_FILE"

  #Content
  cat "$file" >>"$OUTPUT_FILE"

done

echo "Created concatenated file: $OUTPUT_FILE"
