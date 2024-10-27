#!/bin/bash
mkdir -p dist/src/ dist/data/ 2>/dev/null
set -e
shopt -s globstar
civet --js -c src/**/*.civet -o dist/src/.js
find data -name '*.yml' | while IFS= read -r filename
do
    js-yaml "$filename" | tr -d '\n ' >"dist/${filename%.*}.json"
done
cp index.html index.css favicon.png dist/
cp -r img/ dist/
