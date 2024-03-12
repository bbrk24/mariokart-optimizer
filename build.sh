#!/bin/bash
mkdir -p dist/src/ 2>/dev/null
set -e
shopt -s globstar
civet --js -c src/**/*.civet -o dist/src/.js
js-yaml data.yml >dist/data.json
cp index.html dist/
cp -r img/ dist/
