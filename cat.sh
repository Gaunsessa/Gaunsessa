#!/bin/bash
input="README.md"
while IFS= read -r line
do
    if [ "$line" = "![Test](http://203.214.44.222:8000/cat/)" ]; then
        echo "![Test](http://203.214.44.222:8000/cat)" > README.md
    fi
    if [ "$line" = "![Test](http://203.214.44.222:8000/cat)" ]; then
        echo "![Test](http://203.214.44.222:8000/cat/)" > README.md
    fi
    
    git config --local user.email "Cat@Bot.Cat"
    git config --local user.name "CatBot"
    git commit -m "Add changes" -a
    git push
done < "$input"
