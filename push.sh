#!/bin/bash

# Copy init.vim to this directory
cp /home/labib/.config/nvim/init.vim /home/labib/Configs/init.vim


# Git add, commit, push
git add .
git commit -m "generated files on `date +'%Y-%m-%d %H:%M:%S'`"
