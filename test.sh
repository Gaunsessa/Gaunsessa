#!/bin/bash
input="test.txt"
while IFS= read -r line
do
    if [ "$line" = "![Test](http://203.214.44.222:8000/cat/)" ]; then
        # echo "![Test](http://203.214.44.222:8000/cat)" > test.txt
        curl 203.214.44.222:8000/JOE
    fi
    if [ "$line" = "![Test](http://203.214.44.222:8000/cat)" ]; then
        # echo "![Test](http://203.214.44.222:8000/cat/)" > test.txt
        curl 203.214.44.222:8000/MAMA
    fi
done < "$input"
