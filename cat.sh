#!/bin/bash

files=(cats/*)
img="${files[RANDOM % ${#files[@]}]}"

echo "![CAT](${img})" > README.md

git config --local user.email "Cat@Bot.Cat"
git config --local user.name "CatBot"
git commit -m "Add changes" -a
git push