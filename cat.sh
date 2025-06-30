#!/bin/bash

files=(cats/*)
img="${files[RANDOM % ${#files[@]}]}"

echo "
Angus - [ef.je](https://ef.je)

Here is a cat:
![CAT](https://github.com/Gaunsessa/Gaunsessa/blob/master/${img})" > README.md

git config --local user.email "Cat@Bot.Cat"
git config --local user.name "CatBot"
git commit -m "Add changes" -a
git push
