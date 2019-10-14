" ~/.vim/sessions/allMakefiles.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 08 Juli 2019 at 17:53:35.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'marco_pi' | colorscheme marco_pi | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/aurix_app/productive
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd Makefile
edit /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/Makefile
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 94 + 190) / 380)
exe 'vert 2resize ' . ((&columns * 94 + 190) / 380)
exe 'vert 3resize ' . ((&columns * 95 + 190) / 380)
exe 'vert 4resize ' . ((&columns * 94 + 190) / 380)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
123
silent! normal! zo
123
silent! normal! zo
123
silent! normal! zo
let s:l = 372 - ((85 * winheight(0) + 45) / 91)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
372
normal! 011|
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/cpputest/build/MakefileWorker.mk") | buffer /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/cpputest/build/MakefileWorker.mk | else | edit /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/cpputest/build/MakefileWorker.mk | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 441 - ((76 * winheight(0) + 45) / 91)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
441
normal! 031|
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/makefiles/core_makefile.mk") | buffer /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/makefiles/core_makefile.mk | else | edit /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/makefiles/core_makefile.mk | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
229
silent! normal! zo
229
silent! normal! zo
229
silent! normal! zo
229
silent! normal! zo
229
silent! normal! zo
346
silent! normal! zo
346
silent! normal! zo
691
silent! normal! zo
let s:l = 359 - ((48 * winheight(0) + 45) / 91)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
359
normal! 017|
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/UNITTEST/Makefile") | buffer /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/UNITTEST/Makefile | else | edit /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/UNITTEST/Makefile | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 160 - ((36 * winheight(0) + 45) / 91)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
160
normal! 0
wincmd w
4wincmd w
exe 'vert 1resize ' . ((&columns * 94 + 190) / 380)
exe 'vert 2resize ' . ((&columns * 94 + 190) / 380)
exe 'vert 3resize ' . ((&columns * 95 + 190) / 380)
exe 'vert 4resize ' . ((&columns * 94 + 190) / 380)
tabnext 1
badd +116 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/Makefile
badd +402 Makefile
badd +0 \[Plugins]
badd +733 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/makefiles/core_makefile.mk
badd +376 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/project/UNITTEST/Makefile
badd +350 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/templates/mi_ooc_template/utest/Makefile
badd +1 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/pic_app/productive/Makefile
badd +31 ~/.vim/sessions/allMakefiles.vim
badd +0 /cygdrive/d/01_Projekte/02_Swipetronic/MIS_BUILD/TOOLS/cpputest/build/MakefileWorker.mk
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

4wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
