#!/bin/bash

sudo cp ~/codes/cp/template.cpp template.cpp
echo "[+] copied cp code template"

sudo cp ~/.config/nvim/init.vim init.vim
echo "[+] copied init.vim"

sudo cp ~/.bashrc .bashrc
echo "[+] copied .bashrc"

sudo cp ~/.bash_aliases .bash_aliases
echo "[+] copied .bash_aliases"

sudo cp -r ~/.icons/* .icons/
echo "[+] copied .icons"

sudo cp -r ~/.themes/* .themes/
echo "[+] copied .themes"

sudo cp -r ~/.vim/plugged/vim-snippets/UltiSnips/* Snippets/
echo "[+] copeied ultisnips snippets"

sudo cp -r ~/bin/* bin/
echo "[+] copied bin"

dconf dump / > settings
echo "[+] saved settings in settings file"
