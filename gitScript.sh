#!/bin/bash 

input="$*"

git add . 

git commit -m "$input"

git push
