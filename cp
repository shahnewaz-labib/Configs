let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/codes/cp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 A.cpp
badd +0 B.cpp
badd +0 C.cpp
badd +0 input.txt
badd +1 output.txt
argglobal
%argdel
$argadd A.cpp
set stal=2
edit A.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 146 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 43 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 43 + 95) / 190)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((25 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 013|
wincmd w
argglobal
if bufexists("input.txt") | buffer input.txt | else | edit input.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("output.txt") | buffer output.txt | else | edit output.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 146 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 43 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 43 + 95) / 190)
tabedit B.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 148 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 41 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 41 + 95) / 190)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 29 - ((28 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 05|
wincmd w
argglobal
if bufexists("input.txt") | buffer input.txt | else | edit input.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("output.txt") | buffer output.txt | else | edit output.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 148 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 41 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 41 + 95) / 190)
tabedit C.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 146 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 43 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 43 + 95) / 190)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 06|
wincmd w
argglobal
if bufexists("input.txt") | buffer input.txt | else | edit input.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("output.txt") | buffer output.txt | else | edit output.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 146 + 95) / 190)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 43 + 95) / 190)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 43 + 95) / 190)
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
