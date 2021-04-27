#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'

sudo cp ~/codes/cp/template.cpp template.cpp
echo -e "${GREEN}[+] copied cp code template"

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

sudo cp -r ~/.config/nvim/plugged/vim-snippets/UltiSnips/* Snippets/
echo "[+] copeied ultisnips snippets"

sudo cp -r ~/bin/* bin/
echo "[+] copied bin"

sudo cp -r ~/.config/sublime-text-3/Packages/User/* Sublime/
echo "[+] copied sublime things"

dconf dump / > settings
echo "[+] saved settings in settings file"
