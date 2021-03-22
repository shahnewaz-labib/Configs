#!/bin/bash

./backup.sh

# Git add, commit, push
git add .
git commit -m "updated files on `date +'%Y-%m-%d %H:%M:%S'`"
git push origin master
