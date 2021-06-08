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
nnoremap <C-a> :MaximizerToggle<CR>

" Proper home
noremap <Home> ^
inoremap <Home> <ESC>^i

" Close all window
nnoremap <C-w> :wqa! <CR>

" Focus current window
nnoremap <C-t> :Goyo <CR>

colorscheme gruvbox

" Testing

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
"nnoremap <C-t> : call Toggle_transparent()<CR>

call Toggle_transparent()

function! CUR()
    highlight clear CursorLine
    hi CursorLine gui=underline
endfunction

call CUR()

function! CLR()
    highlight clear StatusLine
endfunction

call CLR()

function! SO()
    source ~/.config/nvim/init.vim
endfunction

function! IO()
    vs ~/codes/X/in
    split ~/codes/X/out
endfunction

" FAHIM

hi CursorLineNr guibg=none
hi VertSplit cterm=none gui=none guibg=none
hi Search guibg=none guifg=#8d93a1 gui=underline
hi snipLeadingSpaces guifg=bg

set wildmenu
set path+=**
set hidden
set scrolloff=8

set statusline=\ %M\ %r\ %f 
set statusline+=%=
set statusline+=\ [%{getcwd()}]\ [%n]\ %p%%

set noequalalways

