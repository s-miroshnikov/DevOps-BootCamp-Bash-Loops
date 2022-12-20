#!/bin/bash

str=$1
# for while loop we need lenght of the string
strl=${#str}
i=$((strl-1))
# in this while loop we extracting characters one by one, starting from last character and decreasing index
while [ $i -ge 0 ]
do
    revstr=$revstr${str:$i:1}
    i=$((i-1))
done
# with 'tr' we will change uppercase to lowercase and back in the same time
tr '[:upper:][:lower:]' '[:lower:][:upper:]' <<< "$revstr"
