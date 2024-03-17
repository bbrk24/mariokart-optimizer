#!/bin/bash
mkdir -p dist/src/ 2>/dev/null
set -e
shopt -s globstar
civet --js -c src/**/*.civet -o dist/src/.js
js-yaml data.yml | tr -d '\n ' >dist/data.json
cp index.html index.css favicon.ico dist/
cp -r img/ dist/
