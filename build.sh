#!/bin/bash
TMP=$(mktemp -d)
bundle exec jekyll b --safe
cp -r _site/. $TMP
cd $TMP
git init
git remote add origin https://github.com/5hubh4m/5hubh4m.github.io
git add -A
git commit -m "Publish."
git push origin master -f
cd ..
rm -rf $TMP