

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
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' 

    " Syntax checking
    Plug 'scrooloose/syntastic'

    " Goyo - Distraction free writing
    Plug 'junegunn/goyo.vim'    

    " Limelight
    Plug 'junegunn/limelight.vim'



call plug#end()

syntax on


" Key mapping
autocmd filetype cpp map <F5> :!g++ % <CR> 
autocmd filetype cpp map <F4> :!g++ % <CR> :!./a.out <CR>
autocmd filetype cpp map <F6> :!g++ % && (./a.out < input.txt) > output.txt <CR>
autocmd filetype python map <F5> :!python3 % <CR>
autocmd filetype sh map <F5> :!./% <CR>


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

colorscheme gruvbox

" Statusline
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

