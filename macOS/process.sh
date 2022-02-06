#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IN="$DIR/base"
OUT="$DIR/output"

languages=(en de sl)

for l in "${languages[@]}"; do
  echo "== $l"
  for f in "$IN/$l"/*; do
    echo "=== $f"
    echo magick composite -gravity center "$f" "$DIR/wallpaper.png" "$OUT/${f//$DIR\/base\//}"
    magick composite -gravity center "$f" "$DIR/wallpaper.png" "$OUT/${f//$DIR\/base\//}"
  done
done
