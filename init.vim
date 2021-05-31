set cursorline
hi clear CursorLine
hi CursorLine gui=underline cterm=underline

set termguicolors
set cursorline
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
set nu rnu
set noshowmode
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set ruler               " show line and column number of the cursor on right side of statusline

syntax enable

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
    " Themes
    Plug 'gosukiwi/vim-atom-dark'
    Plug 'kyoz/purify'
    Plug 'morhetz/gruvbox'
    Plug 'ErichDonGubler/vim-sublime-monokai'
    Plug 'arcticicestudio/nord-vim'

    " Airline
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'

    " Auto completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Auto bracket pair
    Plug 'jiangmiao/auto-pairs'

    " Git change
    Plug 'airblade/vim-gitgutter'

    " Vim snippets
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' 

    " Start
    Plug 'mhinz/vim-startify'


    " Syntax checking
    Plug 'scrooloose/syntastic'

    " Goyo - Distraction free writing
    Plug 'junegunn/goyo.vim'    

    " Limelight
    Plug 'junegunn/limelight.vim'
    
    " Maximizer
    Plug 'szw/vim-maximizer'

call plug#end()

" Key mapping
autocmd filetype cpp map <F3> :!g++ % -D LOCAL -std=c++17 -o /home/labib/codes/X/program && timeout 5 /home/labib/codes/X/program <CR>
autocmd filetype cpp map <F5> :!g++ % -D LOCAL -std=c++17 -o /home/labib/codes/X/program <CR> 
autocmd filetype cpp map <F4> :!g++ % -D LOCAL -std=c++17 -o /home/labib/codes/X/program &&  timeout 5 /home/labib/codes/X/program > /home/labib/codes/X/out <CR>
autocmd filetype cpp map <F6> :!g++ % -D LOCAL -std=c++17 -o /home/labib/codes/X/program && (timeout 5 /home/labib/codes/X/program < /home/labib/codes/X/in) >  /home/labib/codes/X/out<CR>
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

" Maximize current tab (does not work but why)
" nnoremap <C-/> :MaximizerToggle<CR>

" Proper home
noremap <Home> ^
inoremap <Home> <ESC>^i

" Change cursor to underline
":set guicursor+=n-i:hor20-Cursor/lCursor

colorscheme gruvbox

" Statusline
"set statusline=
"set statusline+=%#IncSearch#
"set statusline+=\ %y
"set statusline+=\ %r
"set statusline+=%#CursorLineNr#
"set statusline+=\ %F
"set statusline+=%= "Right side settings
"set statusline+=%#Search#
"set statusline+=\ %l/%L
"set statusline+=\ [%c]

" Testing
" Map Shift-F12 to switch between light and dark
function! Switch_background()
    if &background == "light"
        set background=dark
    else
        set background=light
    endif
endfunction
map <S-F12> :call Switch_background()<CR>


let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>

call Toggle_transparent()
