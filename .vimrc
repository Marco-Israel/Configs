

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" VIM OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"filetype plugin indent on "like above
autocmd InsertLeave * redraw! "Leerzeichen beim Tippen anzeigen
set backup "   Backup-Dateien vor dem Speichern anlegen
set backupdir=~/.vim/backup/ "Verzeichnis zum Speichern (vorher anlegen)
set undofile "permanentes Rueckgaengigmachen ermoeglichen (ab Version 7.3)
set undodir=~/.vimm/undo/ "Wiederherstellungfiles
set splitbelow "immer unten spliten"
set splitright "immer nach rechts splitten"
set nocp "vim mode
set wildmenu "turn special function for compleation menu on
set wildmode=longest:full,full  "omni and other menu layout
set nocp "vi-Kompatibilitaets-Modus deaktivieren
set ruler "aktuelle Zeile und Spalte anzeigen
set undofile "Undo-File setzendd
set undodir=~/.vim/undo "Verzeichnis fuer Wiederherstellungsinformationen
set autoindent "automatische Zeileneinrueckung
set smartindent "intelligente Zeileneinrueckung
set expandtab "Tabs durch Leerzeichen ersetzen lassen
set shiftwidth=4 "Anzahl der Leezeichen fuer autoindent
set softtabstop=4 "Ruecktaste loescht Tab, 4 Leerzeichen
set ignorecase "Gross-/Kleinschreibung ignorieren
set smartcase "Gross-/Kleinschreibung nicht ignorieren
set hlsearch "Suchergebnisse hervorheben
set incsearch "Ergebnisse beim Tippen anzeigen
set cryptmethod=blowfish "Verschuesselungsmethode definieren
"set cursorline "aktuelle Zeile unterstreichen
set history=1000 "setzt die bash history. Default in vim=20, vi=0
set showmatch "öffnende und schließende Klammern hervorheben
set showcmd "Kommandos beim Eintippen rechts unten in der Statuszeile anzeigen
set autoread  "Liest die Datei neu, wenn ausserhalb von VIM geändert.
set wrap "automatischer Zeilenumbruch am Ende der Zeile aktivieren
set linebreak "Bei aautomatiscben Linebreak (set wrap) Wörter nicht trennen
set wrap linebreak nolist
set listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:+,eol:$,precedes:#,extends:* " Tabs und Leerzeichen am Zeilenende anzeigen
set list "listchars anzeigen
"set relativenumber "Relative Zeilennummern
set nocompatible "enter the current millenium
set colorcolumn=80 "show a line in <n> coloum
set textwidth=80  "autowrap after 80 char for instance. 0==turn off.
"set formatoptions+=a "Autowrep during insert or deleate
set linebreak  "break a line hard, not only display a linebreak.
set nolist
set expandtab "   Tabs durch Leerzeichen ersetzen lassen
set tabstop=4 " Tab auf 4 Zeichen setzen
set shiftwidth=4 "   Anzahl der Leezeichen fuer autoindent
set softtabstop=4 "   Ruecktaste loescht Tab, 4 Leerzeichen
set clipboard^=unnamed,unnamedplus
set laststatus=2 " Statuszeile anzeigen
set path+=** "extand the vim path"
set path+=../**
set path+=../../**
set tags=./tags,$PWD/.scopedb/ctags.db
set number "Activates real number"
set complete=.,w,b,u,t "not search in included files
set scrolloff=3 "show the last X lines. 999 = Center everytime.
set viminfo='100,f1,:20,@20,/20
set encoding=utf-8
set fileencodings:=utf-8


packadd! matchit        "vim internal addon to define machtes like <some> <\some>


"set autowrite
"set autowriteall
"set complete-=i
"
""" Foldenable codeblocks """"""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldlevelstart=1
set foldnestmax=5
set foldmethod=indent
"autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
autocmd InsertEnter,WinLeave * setlocal foldmethod=manual

"""  aktuelle Zeile einfärben anstatt zu unterstreichen """"""""""""""""""""""""
"highlight CursorLine term=bold,underline,undercurl cterm=bold,underline,undercurl




""" Spelling and spellcheck """"""""""""""""""""""""""""""""""""""""""""""""""""
"setlocal spell spelllang=en_us,de_de "Sprache setzten
"set spell spelllang=en_us,de_de "Sprache setzten
"autocmd VimEnter,BufNewFile,BufReadPost *.uml :set nospell

"set spelllang=de_de
"setlocal spell spelllang=de_de
"# Wann geladen wird              # Maske   # Aktivieren      #Sprache
"au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_de
"au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=de_de
au BufNewFile,BufRead *.txt,*.tex     setlocal spell spelllang=en_us,de_de
au BufNewFile,BufRead *.todo          setlocal spell spelllang=en_us,de_de
au BufNewFile,BufRead README          setlocal spell spelllang=en_us,de_de
au BufNewFile,BufRead *.c,*.cpp       setlocal spell spelllang=en_us
au BufNewFile,BufRead *.h,*.hpp,*.hh  setlocal spell spelllang=en_us
au BufNewFile,BufRead *.py            setlocal spell spelllang=en_us
au BufNewFile,BufRead *.sh            setlocal spell spelllang=en_us,de_de


"""tags
"au BufNewFile,BufRead *c,*.cpp,*h,*hh.*hpp  set tags=~/.tags/last_project,~/.tags/last_utest,~/.tags/thirdparty,~/.tags/cpputest



""" Syntax und Colorshame """"""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on "Sytaxhighliting einschalten
set background=dark
set t_Co=256
colorscheme marco_pi
"source ~/.config/vimrc_256colors
match TODO /s+%#@<!$/ "TODOs highlights, Anzeigen einer Liste von Vorschlägen
let g:rainbow_active = 0 "Colord Brackets
set autoindent    "turns it on
set smartindent   "does the right thing (mostly) in programs
set cindent       "stricter rules for C programs
let c_space_errors = 1 "space errors einschalten
let java_space_errors = 1 "space errors einschalten
let python_space_errors = 1 "space errors einschalten
let ruby_space_errors = 1 "space errors einschalten
let c_curly_error = 1 "highlight a missing }; can be slow down vim !!





""" Save last current line in a open file when close """""""""""""""""""""""""""
 if has("autocmd")
     au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
 endif





""" Tweaks for browsing """""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'





"
""" Change Cursor Colllor """"""""""""""""""""""""""""""""""""""""""""""""""""""
 if &term =~ "xterm\\|rxvt"
     "1 is the blinky block cursor
     "2 is the default (non-blinky) block cursor
     "3 is blinky underscore
     "4 fixed underscore
     "5 pipe bar (blinking)
     "6 fixed pipe bar


     "Green and Block Cursor at Startup ### WORK,BUT Terminal than in last
     "line
     "silent !echo -ne "\033[2 q"
     "silent !echo -ne "\033]12;green\007"

     " use an orange cursor in insert mode
     let &t_SI = "\033[2 q"
     "let &t_SI .= "\<Esc>]12;orange\007"
     let &t_SI .= "\<Esc>]12;green\x7"
     "let &t_SI .= \"\<Esc>[4 q"

     " use an orange cursor in insert mode
     let &t_SR = "\033[1 q"
     let &t_SR .= "\<Esc>]12;green\x7"
     "let &t_SR .= "\<Esc>]12;orange\007"


      "use a red cursor otherwise
     let &t_EI = "\033[2 q"
     let &t_EI .= "\<Esc>]12;orange\007"
     "let &t_EI .= "\<Esc>]12;green\x7"
     "let &t_EI .= \"\<Esc>[5 q"
     " reset cursor when vim exits
     au VimLeave * silent execute '!echo -e "\033]12;magenta\007"'
     au VimLeave * silent execute '!echo -e "\033[6 q"'
 else

"     let &t_SI = "\033[2 q"
"     let &t_SI .= "\<Esc>Ptmux;\<Esc>]12;green\x7"
"     let &t_SR = "\033[1 q"
"     let &t_SR .= "\<Esc>Ptmux;\<Esc>]12;green\x7"
"     let &t_EI = "\033[2 q"
"     let &t_EI .= "\<Esc>Ptmux;\<Esc>]12;orange\007"
"     au VimLeave * silent execute '!echo -e "\033]12;magenta\007"'
"     au VimLeave * silent execute '!echo -e "\033[6 q"'
 endif


 """ Deleat all Trailing Whitespace """"""""""""""""""""""""""""""""""""""""""""
"autocmd TabClosed,BufLeave,VimLeave,VimLeavePre,WinLeave,BufWrite * :%s/\s\+$//e<CR>
"autocmd BufLeave,VimLeave,VimLeavePre,BufWritePre * :call StripTrailingWhitespaces()
autocmd VimLeavePre,BufWritePre * :call StripTrailingWhitespaces()
function! StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Key MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open Trees
nnoremap <F9> :UndotreeToggle<cr>
noremap <F10> :NERDTreeToggle<CR>
noremap <F11> :TagbarToggle<CR>
noremap <F12> :BufExplorerVerticalSplit<CR>


"Toggle auto-linebreak
noremap <F4> :set formatoptions+=a<CR>
noremap <C-F4> :set formatoptions-=a<CR>


"Build files
noremap <M-F8> :!ctags -a -f ~/.tags/last & <CR>





"faster moving inside splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>





"remap copy past to clipboard buffers
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-M-p> "+gP
vnoremap <C-M-p> "+gP





" copy (write) highlighted text to .vimbuffer
vmap <M-c> y:new ~/.vb<CR>VGp:x<CR> \| :!cat ~/.vb \| clip.exe <CR><CR>





" paste from buffer
 map <M-v> :r ~/.vb<CR>






"toggle between tabs
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabmmove<Space>
nnoremap td  :tabclose<CR>




"new tab or close tab with shift+[cn]
map <M-S-n> mz:tabnew<CR>
map <M-S-c> mz:tabclose<CR>





""move lines up and down with shift+alt+[jk]
nmap <M-S-j> mz:m+<cr>`z
nmap <M-S-down> mz:m+<cr>`z
nmap <M-S-k> mz:m-2<cr>`z
nmap <M-S-up> mz:m-2<cr>`z





"strg+w mapping
"nmap <C-> <C-w>left
"nmap <C-> <C-w>right
nmap <C-w>< <C-w>5<
nmap <C-w>> <C-w>5>
"new tab or close tab with shift+[cn]



" Steal Mr. Bradley's formatter & add it to our spec_helper
" http://philipbradley.net/rspec-into-vim-with-quickfix
" Configure the `make` command to run RSpec
"set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter





"moving between breaked lines
nnoremap k gk
nnoremap j gj
inoremap <C-k> <C-o>gk
inoremap <C-j> <C-o>gj





"Show taglist instead of jump directly
"nnoremap <C-]> g<C-]>




"map for all modes, apply by using nmap, vmap, and imap
map <F6> :w!<CR>:!aspell --lang=en_us check %<CR>:e! %<CR>
map <leader>hex :%!xxd<CR>        " Hexeditor mit \hex starten
map <leader>nhex :%!xxd -r<CR>    " Hexeditor mit \nhex beenden
map <F3> <C-V>}<S-I>
map <C-9> :r!date +\%Y-\%m-\%d<CR>
"map <F11> //####################ETWAS########################<ESC>?ETWAS<CR>cw





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Internal Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Deleat withspaces
map <C-F9> :call StripTrailingWhitespaces()


" fill rest of line with characters
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
    o
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" PLUGIN  OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Plugins to install """""""""""""""""""""""""""""""""""""""""""""""""""""""""
source  ~/.vimplug.conf

""" YCM (You complete me code completion) """""""""""""""""""""""" """""""""""""




""" SnipeMate (Snipet Plugin)  """""""""""""""""""""""""""""""""""""""""""""""""
"let g:snipMate.always_choose_first


""" UltiSnipets (Snipte Plugin) """"""""""""""""""""""""""""""""""""""""""""""""
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
""
""" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"



""" Extended Session Management """"""""""""""""""""""""""""""""""""""""""""""""
let g:session_autosave='yes'
let g:session_directory='~/.vim/sessions'
let g:session_autosave_to='~/.vim/sessions/autosave'
let g:session_lock_directory='~/.vim/sessions/locks'
"let g:session_extension='_'.strftime('%Y%m%d%H-%M%S')
let g:session_autosave_silent=1
let g:session_autoload='yes'
let g:session_lock_enabled=0
let g:session_default_overwrite =1
let g:session_autosave_periodic = 1 "interval for autosave in minutes
let g:session_command_aliases = 1 "for :'Session'*<tab>
let g:session_menu = 1
let g:session_default_namea = 'last'
let g:session_default_to_last=1

set sessionoptions-=help
"set sessionoptions-=options
"let g:loaded_session = 1 "avoid loading the vim- session plug-in, set this to
                                            " some value, dont care about it.





""" Syntastic Syntax Check """""""""""""""""""""""""""""""""""""""""""""""""""""
" "let g:syntastic_c_checkers = ['clang_check', 'gcc']
" let g:syntastic_c_checkers = ['clang', 'gcc', 'make']
"let g:syntastic_clang_check_config_file
"(string; default: '.syntastic_clang_check_config')
" let g:syntastic_c_compiler = 'clang'
" let g:syntastic_c_compiler_options = ' -std=c11 -stdlib=libc'
" let g:syntastic_c_check_header = 1 "Also check header files
""autocmd VimEnter * execute 'let g:syntastic_c_checkers=["clanG", "GCC", "make"]'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"
"
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_enable_balloons = 1
"let g:syntastic_check_on_wq = 0
""let g:syntastic_auto_jump = 1
""let g:syntastic_c_include_dirs = [ '/cygdrive/c/app/Aurix/WKS_LUFU_AURIX/' ]
"
"
"let g:syntastic_mode_map = {
"    \ "mode": "passive",
"    \ "active_filetypes": ["c", "h"],
"    \ "passive_filetypes": [""] }
"





""" Hard mode """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"HARDMODE (Deisable Arrow Keys, PageUp/Down ...)
"let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Do not  use this!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
let g:neocomplete#enable_at_startup = 1
autocmd FileType vim let b:vcm_tab_complete = 'vim'





""" OmniCpp Compleat "" Plugin) """"""""""""""""""""""""""""""""""""""""""""""""
let OmniCpp_ShowScopeInAbbr = 0 "show extend scope if 1 ('MyNSpace::MyClass::m1'
let OmniCpp_NamespaceSearch = 2 "search namespaces in current buffer + included files:
let OmniCpp_SelectFirstItem = 0 "2=select first without inserting it to the text
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1 "show/hide the access information ('+', '#', '-')
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" automatically open and close the popup menu / preview window
"autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"'<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"'<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <C-Space> <C-x><C-o>
inoremap <C-O> <C-x><C-o>
set completeopt=menuone,menu,longest
set omnifunc=ccomplete#Complete
"set omnifunc+=syntaxcomplete#Complete
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc+=omni#cpp#complete#Main
if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
	    \	if &omnifunc == "" |
	    \		setlocal omnifunc+=syntaxcomplete#Complete |
	    \	endif
endif





""" plantUML """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PlantUML()
        execute ":w"
        execute ":!java -jar plantuml.jar -o %:p:h %"
        echohl StatusLine | echo "Plantuml saved and updated" | echohl None
endfunction
autocmd FileType plantuml nnoremap <buffer> <F3> :call PlantUML()

"autocmd  BufWritePre *.uml :normal gg=G
"autocmd FileWritePost,BufWritePost,FilterWritePost,FileAppendPost *.uml,*.pl,
"*.plantuml :!java -jar ,/plantuml.jar %:p
"autocmd FileWritePost,BufwritePre,BufWritePost,FilterWritePost,FileAppendPost *.uml,*.pl,*.plantuml :!java -jar plantuml.jar -tsvg %
autocmd FileWritePost,BufwritePre,BufWritePost,FilterWritePost,FileAppendPost *.uml,*.pl,*.plantuml :!java -jar plantuml.jar %





""" Multi Cursor support """""""""""""""""""""""""""""""""""""""""""""""""""""""
"If you don't like the plugin taking over your key bindings, you can turn it off
"and reassign them the way you want.  NOTE: Please make sure to always map
"something to g:multi_cursor_quit_key, otherwise you'll have a tough time
"quitting from multicursor mode.
"
"let g:multi_cursor_use_default_mapping=0
"
"" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
"
"


""" Ctags """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"As we edit code, newer types get defined, but vim continues to use the same
"tags file. So we need to regularly update our tags file. We can add a
"shortcut map (say pressing F4) in our .vimrc for the same.
"function! UpdateTags()
" execute ":!ctags -R --languages=C++ --c++-kinds=+p --fields=+iaS --extra=+q ./"
" echohl StatusLine | echo "C/C++ tag updated" | echohl None
"endfunction
"nnoremap <F5> :call UpdateTags()
"

"autocmd FileWritePost,BufWritePost,FilterWritePost,FileAppendPost
"*.c,*.cpp,*.h !ctags -R &
"autocmd BufWrite *.c,*.h silent !ctags -R -f ~/.tags/last %:p:h   2>/dev/NULL
"autocmd BufWrite *.cpp,*.hpp silent !ctags
"-R -f ~/.tags/last_utest %:p:h   1>/dev/NULL

"inoremap <c-x><c-]> <c-]>


""" Cscope  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
                set csprg=/usr/bin/cscope
                cs add $PWD/.scopedb/cscope.db
                "use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
                set cscopetag
                set cst
                " check cscope for definition of a symbol before
                " checking ctags: set to 1
                " if you want the reverse search order.
                 set csto=0


                "show msg when any other cscope db added
                set cscopeverbose
                set csverb

                "results should add / should not be added to the quickfix list
               set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
               "set cscopequickfix=s-,c-,d-,i-,t-,e-,a-,g-,f-
	           "set cscopequickfix=s+,c+,d+,i+,t+,e+,a+,g+,f+



    "Desscription: cscope_maps plugin

    nmap <C-\>s :lcs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :lcs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :lcs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :lcs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :lcs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :lcs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :lcs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :lcs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>a :lcs find a <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>n :cn <C-R>
    nmap <C-\>l :cl <C-R>


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    nmap <C-]>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-]>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-]>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]>a :scs find a <C-R>=expand("<cword>")<CR><CR>


    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-]><C-]>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-]><C-]>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-]><C-]>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>a :vert scs find a <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100


	" Add different cscope databases
    "   elseif filereadable("./OUT/cscope.out")
    "       cs add ./OUT/cscope.out
    "   elseif filereadable("./OUT/other/cscope.out")
    "       cs add ./OUT/other/cscope.out
    "   " else add database pointed to by environment
    "   elseif $CSCOPE_DB != ""
    "       cs add ~/.tags/cscope_last.out
    "       cs add ~/.tags/last_project
    "       cs add ~/.tags/last_utest
    "       cs add ~/.tags/thirdparty
    "       cs add ~/.tags/cpputest
    "   endif
    "   set csverb
endif

"These mappings for Ctrl-] (right bracket) and Ctrl-\ (backslash) allow you to
"place your cursor over the function name or C symbol and quickly query cscope
"for any matches.
"
"Or you may use the following scheme, inspired by Vim/Cscope tutorial from
"Cscope Home Page (http://cscope.sourceforge.net/):

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>

        " Using 'CTRL-spacebar' then a search type makes the vim window
        " split horizontally, with search result displayed in
        " the new window.

nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>a :scs find a <C-R>=expand("<cword>")<CR><CR>

        " Hitting CTRL-space *twice* before the search type does a vertical
        " split instead of a horizontal one

nmap <C-Space><C-Space>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space><C-Space>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>a :vert scs find a <C-R>=expand("<cword>")<CR><CR>



""" Flashing yy area """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$





""" junegunn/vim-easy-align """"""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"load vim PLUGINS
"



""" Vim Ranger Explorer"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
"nnoremap <silent><Leader>o :RangerOpenProjectRootDir<CR>





""" MiniBuffExplorer """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"
"let g:buffet_powerline_separators = 1
"let g:buffet_tab_icon = "\uf00a"
"let g:buffet_left_trunc_icon = "\uf0a8"
"let g:buffet_right_trunc_icon = "\uf0a9"
"
"let g:buftabs_enabled = 1
"let g:buftabs_in_statusline = 1
"let g:buftabs_in_cmdline = 0
"let g:buftabs_only_basename = 1
"let g:buftabs_active_highlight_group = "Visual"
"let g:buftabs_inactive_highlight_group = ""
"let g:buftabs_statusline_highlight_group = ""
"let g:buftabs_marker_start = "["
"let g:buftabs_marker_end = "]"
"let g:buftabs_separator = "-"
"let g:buftabs_marker_modified = "!"
"
"noremap <f1> :bprev<CR>
"noremap <f2> :bnext<CR>
"



""" FileTyoe and Syntax """"""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufFilePost,BufEnter,BufReadPost,FileReadPost,SessionLoadPost *.tex set filetype=tex



""" easy-motion """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
""map <Leader> <Plug>(easymotion-prefix)
""
"" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)
"
"" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)
"
"" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)
"
"
"
"" You can use other keymappings like <C-l> instead of <CR> if you want to
"" use these mappings as default search and sometimes want to move cursor with
"" EasyMotion.
"function! s:incsearch_config(...) abort
"  return incsearch#util#deepextend(deepcopy({
"  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"  \   'keymap': {
"  \     "\<CR>": '<Over>(easymotion)'
"  \   },
"  \   'is_expr': 0
"  \ }), get(a:, 1, {}))
"endfunction
"
"noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
"noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
"noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
"
"
"
"function! s:config_easyfuzzymotion(...) abort
"  return extend(copy({
"  \   'converters': [incsearch#config#fuzzyword#converter()],
"
"  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
"  \   'is_expr': 0,
"  \   'is_stay': 1
"  \ }), get(a:, 1, {}))
"endfunction
"
"noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
"
"" Require tpope/vim-repeat to enable dot repeat support
"" Jump to anywhere with only `s{char}{target}`
"" `s<CR>` repeat last find motion.
"nmap s <Plug>(easymotion-s)
"" Bidirectional & within line 't' motion
""omap t <Plug>(easymotion-bd-tl)
"" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
" " type `l` and match `l`&`L`
"let g:EasyMotion_smartcase = 1
"" Smartsign (type `3` and match `3`&`#`)
"let g:EasyMotion_use_smartsign_us = 1
"
"
""let g:EasyMotion_do_mapping = 0 " Disable default mappings
"
"" Jump to anywhere you want with minimal keystrokes, with just one key binding.
"" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
"" or
"" `s{char}{char}{label}`
"" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)
"
"" Turn on case-insensitive feature
""let g:EasyMotion_smartcase = 1
"
"" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
"
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"
"" Eeasy Motions plugins
"" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
"" EasyMotion. Without these mappings, `n` & `N` works fine. (These mappings
"" just provide different highlight method and have some other features )
"map  <Leader><Leader>n <Plug>(easymotion-next)
"map  <Leader><Leader>N <Plug>(easymotion-prev)
"
"nmap <Leader><Leader>s <Plug>(easymotion-s2)
"nmap <Leader><Leader>t <Plug>(easymotion-t2)
"




""" SuperTab """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"supertab
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"





""" Stripe Withespaces """""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:better_whitespace_enabled=1
"let g:strip_whitespace_on_save=1




""" Ctrlp """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_extensions = ['tag','g:ctrlp_root_markers','quickfix','dir','rtscript','autoignore','undo','line','mixed','bookmarkdir']
"let g:ctrlp_root_markers =



"The default filename for storing and loading quickfix and location lists is
"customizable by setting the following variables in your vimrc:
    let g:editqf_saveqf_filename  = "quickfix.list"
    let g:editqf_saveloc_filename = "location.list"

"Jump to the edited error when editing finished:
    let g:editqf_jump_to_error = 1

"Store absolute filename when adding a new note
    let g:editqf_store_absolute_filename = 1

"The default keybinding <leader>n for adding a quickfix note can be
"custuomized by defining a mapping in your vimrc:
"    nmap <leader>n <Plug>QFAddNote
"    nmap <leader>N <Plug>QFAddNotePattern
"    nmap <leader>l <Plug>LocAddNote
"    nmap <leader>L <Plug>LocAddNotePattern
"
"The above mappings can be turned off by setting:
"    let g:editqf_no_mappings = 1




"Other plugins
":source % ~/.vim/plugin/supertab.vmb
"silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
":call pathogen#helptags()

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"set dictionary="/usr/dict/words
"



""" Doxygen Toolkit """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@brief    "
let g:DoxygenToolkit_paramTag_pre="@Param    "
let g:DoxygenToolkit_returnTag="@Returns    "
let g:DoxygenToolkit_blockHeader=""
let g:DoxygenToolkit_blockFooter=""
let g:DoxygenToolkit_authorName="Marco Israel (MI / MIS)"
let g:DoxygenToolkit_licenseTag="(c) by Marco Israel. All rights reserved"





""" Clang-Compleat """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " path to directory where library can be found
   "let g:clang_library_path='/usr/lib/'
   "let g:clang_library_path='/usr/lib64/'
   "let g:clang_library_path+='/usr/lib/gcc/avr/'
    "let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>' " SuperTab completion fall-back
     "or path directly to the library file
     "let g:clang_library_path+='/usr/lib/libclang.so.3.9'"
"     let g:clang_library_path='/usr/lib64/libclang.so.3.9'

"set conceallevel=2
"set concealcursor=vin "Sets the modes in which text in the cursor line can also be concealen
"let g:clang_snippets=1 "If equal to 1, it will do some snippets magic on code placeholders like function argument, template parameters, etc. LIKE INSERT FUNCTION PROTOTYPE :)
"let g:clang_conceal_snippets=1 " clang_complete will use vim 7.3 conceal feature to hide the snippet placeholders
" The single one that works with clang_complete
"let g:clang_snippets_engine=['clang_complete', 'ultisnips']"Clang snipet
"let g:clang_snippets_engine = 'ultisnips' "Use ultisnip agin
"let g:clang_snippets_engine = 'clang_complete' "Use default engin
"engin
"
" " Complete options (disable preview scratch window, longest removed to aways
" " show menu)
"set completeopt=menu,menuone,noinsert,noselect,preview
"
"" Limit popup menu height
"set pumheight=0 " Determines the maximum number of items to show in the
"popup menu (default = 0 --> max list  )

"let g:clang_complete_copen=1 "open Quickfix windows on erro, Default 0
"let g:clang_complete_auto_select=0 "Select first item in list but dont insert it into the code (that would be 2). Default: 0
"let g:clang_complete_auto=1 "If equal to 1, automatically complete after ->, ., ::
"let g:clang_complete_optional_args_in_snippets = 1 "If equal to 1, it will add optional arguments to the function call snippet.
"let g:clang_trailing_placeholder=1 "If equal to 1, clang_complete will add a trailing placeholder after functions
"let g:clang_close_preview = 1 "If equal to 1, the preview window will be close automatically after a compleation. Default = 0.
""let g:g:clang_user_options='c11'  "User Compiler flags
""let g:clang_use_library=1 "use glipC libery also. Default =2
"let g:clang_complete_macrouse = 1 "If clang should complete preprocessor macros and constants
"let g:clang_complete_patterns=1 "If clang should complete code patterns, i.e loop constructs etc.
""fix Bug AutoPair Plugin and Clang-Compleat
"let g:AutoPairsMapCR = 0
"imap <silent><CR> <CR><Plug>AutoPairsReturn


"An advanced configuration allows you to define what parentheses to use for
"each type of file. You can also determine the colors of your parentheses by
"this way (read file vim73/rgb.txt for all named color)
"let g:rainbow_load_separately = [
"    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']]  ],
"    \ [ '*.tex' , [['(', ')'], ['\[', '\]']]  ],
"    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']]  ],
"    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']]  ],
"    \
"]

"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens guifg=#ff1998 guibg=#303030 guisp=#303030 gui=NONE ctermfg=203 ctermbg=236 cterm=NONE
"
"
"
"
""" Vim-notgrep
nnoremap <unique> <Leader>jq :<C-u>NotGrepFromSearch<CR>
"Search for word (\b is word boundary).
nnoremap <unique> <Leader>jw :<C-u>NotGrep \b<cword>\b<CR>
nnoremap <unique> <Leader>jW :<C-u>NotGrep \b<cWORD>\b<CR>
xnoremap <unique> <Leader>jw "cy:<C-u>call notgrep#search#NotGrep('grep', '\b'. @c .'\b')<CR>
" Less precise. Similar to `*` vs `g*`.
nnoremap <unique> <Leader>jgw :<C-u>NotGrep <cword><CR>
nnoremap <unique> <Leader>jgW :<C-u>NotGrep <cWORD><CR>
xnoremap <unique> <Leader>jgw "cy:<C-u>call notgrep#search#NotGrep('grep', @c)<CR>






"" Yank List (Yoink) """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
"nmap <c-p> <plug>(YoinkPostPasteSwapForward)
let g:ctrlp_map=''  "to work with ctrl-p
nmap <expr> <c-p> yoink#isSwapping() ? '<plug>(YoinkPostPasteSwapForward)' : '<Plug>(ctrlp)'
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)
nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)



""" C.vim (C Support) """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:C_SourceCodeExtensions  = 'h cc cp cxx cpp CPP c++ C i ii'


""" www Search """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:wwwsearch_command_to_open_uri =  "min"
nnoremap <Space>*  :<C-u>Wwwsearch -default <cword><Return>



""" Grep in all open bufffers """"""""""""""""""""""""""""""""""""""""""""""""""
"function! BuffersList()
"  let all = range(0, bufnr('$'))
"  let res = []
"  for b in all
"    if buflisted(b)
"      call add(res, bufname(b))
"    endif
"  endfor
"  return res
"endfunction
"
"function! GrepBuffers (expression)
"  exec 'vimgrep/'.a:expression.'/ '.join(BuffersList())
"endfunction
"
"command! -nargs=+ GrepBufs call GrepBuffers(<q-args>)
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" TEMPLATES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap ,html :-1read $PROJECT_HOME/bin/templates/cpputestcpp.txt<CR>3jwf>a
nnoremap ,utest :-1read $PROJECT_HOME/TOOLS/templates/cpputest/cpputest.txt<CR>/____TODO____<CR>
nnoremap ,mockapp :-1read $PROJECT_HOME/TOOLS/templates/cpputest/mockCppHpp.txt<CR>/____TODO____<CR>
nnoremap ,mockcpp :-1read $PROJECT_HOME/TOOLS/templates/cpputest/mockCpp.txt<CR>/____TODO____<CR>
nnoremap ,mockhpp :-1read $PROJECT_HOME/TOOLS/templates/cpputest/mockHpp.txt<CR>/____TODO____<CR>
nnoremap ,test :-1read $PROJECT_HOME/TOOLS/templates/cpputest/cpputestCppCase.txt <CR>/____TODO____<CR>
nnoremap ,testcpp :-1read $PROJECT_HOME/TOOLS/templates/empty_ch_template.txt<CR>/____TODO______<CR>
nnoremap ,empty :-1read $PROJECT_HOME/TOOLS/templates/empty_ch_template.txt<CR>/____TODO______<CR>
nnoremap ,ooc :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc.c<CR>/____TODO______<CR>
nnoremap ,ooch :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc.h<CR>/____TODO______<CR>
nnoremap ,oob :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_base_template.c<CR>/____TODO______<CR>
nnoremap ,oobh :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_base_template.h<CR>/____TODO______<CR>
nnoremap ,oos :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_sub_template.c<CR>/____TODO______<CR>
nnoremap ,oosh :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_sub_template.h<CR>/____TODO______<CR>
nnoremap ,erroh :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_errorHandler.c<CR>/____TODO______<CR>
nnoremap ,errohh :-1read $PROJECT_HOME/TOOLS/thirdparty/mi_ooc/productive/mi_ooc_errorHandler.h<CR>/____TODO______<CR>
nnoremap ,umlc :-1read $PROJECT_HOME/TOOLS/templates/plantumlNote.txt<CR>/____TODO______<CR>
nnoremap ,sempty :-1read $PROJECT_HOME/TOOLS/templates/shortDocinfo.txt<CR>/____TODO______<CR>


