

set termguicolors
set cursorline
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
set nu rnu

syntax enable

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
    " Themes
    Plug 'gosukiwi/vim-atom-dark'
    Plug 'kyoz/purify'
    Plug 'morhetz/gruvbox'

    " Auto completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Auto bracket pair
    Plug 'jiangmiao/auto-pairs'

    " Git change
    Plug 'airblade/vim-gitgutter'

    " Vim snippets
    Plug 'SirVer/ultisnips'    

    " Syntax checking
    Plug 'scrooloose/syntastic'
 

call plug#end()

syntax on


" Key mapping
autocmd filetype cpp map <F5> :!g++ % <CR> 
autocmd filetype cpp map <F6> :!g++ % && (./a.out < input.txt) > output.txt <CR>
autocmd filetype python map <F5> :!python3 % <CR>


" Switching Tabs
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" Save file
noremap <C-s> :w <CR>
inoremap <C-s> <ESC>:w<CR>



" Proper home
noremap <Home> ^
inoremap <Home> <ESC>^i




" Change cursor to underline
:set guicursor+=n-i:hor20-Cursor/lCursor

colorscheme atom-dark
