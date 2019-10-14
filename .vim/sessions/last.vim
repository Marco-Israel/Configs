" ~/.vim/sessions/last.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 25 Juli 2019 at 16:17:33.
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
cd /cygdrive/d/00_MIS_BUILD/lmos52042_lib/project
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd app/main.c
edit app/main.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd w
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 190) / 380)
exe 'vert 2resize ' . ((&columns * 86 + 190) / 380)
exe 'vert 3resize ' . ((&columns * 87 + 190) / 380)
exe 'vert 4resize ' . ((&columns * 86 + 190) / 380)
exe 'vert 5resize ' . ((&columns * 86 + 190) / 380)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
70
silent! normal! zo
let s:l = 67 - ((66 * winheight(0) + 55) / 111)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 0
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_typedef.h") | buffer /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_typedef.h | else | edit /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_typedef.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 10 - ((9 * winheight(0) + 55) / 111)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_io.h") | buffer /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_io.h | else | edit /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_io.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 123 - ((103 * winheight(0) + 55) / 111)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
123
normal! 0
wincmd w
argglobal
if bufexists("/cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/gpio/aurix_gpio.h") | buffer /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/gpio/aurix_gpio.h | else | edit /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/gpio/aurix_gpio.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 22 - ((21 * winheight(0) + 55) / 111)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 190) / 380)
exe 'vert 2resize ' . ((&columns * 86 + 190) / 380)
exe 'vert 3resize ' . ((&columns * 87 + 190) / 380)
exe 'vert 4resize ' . ((&columns * 86 + 190) / 380)
exe 'vert 5resize ' . ((&columns * 86 + 190) / 380)
tabnext 1
badd +11 app/main.c
badd +153 driver/tc27x/iLLD/TC27D/Tricore/Psi5/Psi5/IfxPsi5_Psi5.h
badd +62 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/0_AppSw/Tricore/Main/Cpu0_Main.c
badd +49 /cygdrive/d/00_MIS_BUILD/lmos52042_lib/project/driver/tc27x/iLLD/TC27D/Tricore/Gtm/Std/IfxGtm_Cmu.h
badd +23 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/aurix_gtm/aurix_gtm.c
badd +1 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/aurix_gtm/aurix_gtm.h
badd +33 driver/tc27x/iLLD/TC27D/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.c
badd +41 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/elmos_52042/elmos_52042.c
badd +110 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/SIO/sio.c
badd +10 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/gpio/aurix_gpio.c
badd +99 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_io.h
badd +4 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/0_AppSw/Tricore/TestFramework/FrameworkSIO.c
badd +13 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/0_AppSw/Config/Common/Cfg_Elmos.h
badd +0 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/SIO/sio.h
badd +1 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/gpio/aurix_gpio.h
badd +0 /cygdrive/d/01_Projekte/04_Elmoss/code_sven/0_Src/2_CDrv/lemdd/lemdd_typedef.h
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

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree /cygdrive/d/00_MIS_BUILD/lmos52042_lib/project
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 111|vert 1resize 31|2resize 111|vert 2resize 86|3resize 111|vert 3resize 87|4resize 111|vert 4resize 86|5resize 111|vert 5resize 86|
3wincmd w
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
