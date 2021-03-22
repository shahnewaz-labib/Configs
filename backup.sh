#!/bin/bash

sudo cp /home/labib/.config/nvim/init.vim /home/labib/Configs/init.vim
echo "copied init.vim"

sudo cp /home/labib/.bashrc /home/labib/Configs/.bashrc
echo "copied .bashrc"

sudo cp /home/labib/.bash_aliases .bash_aliases
echo "copied .bash_aliases"

sudo cp -r /home/labib/.icons/* /home/labib/Configs/.icons/
echo "copied .icons"

sudo cp -r /home/labib/.themes/* /home/labib/Configs/.themes/
echo "copied .themes"

sudo cp -r /home/labib/.vim/plugged/vim-snippets/UltiSnips/* Snippets/
echo "copeied ultisnips snippets"

dconf dump / > settings
echo "saved settings in settings file"
