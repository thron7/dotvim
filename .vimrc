set nocompatible
"source $VIM\vimrc_example
behave xterm
"set shell=D:\apps\cygwin\bin\bash.exe
set selectmode=mouse
"set guifont=Misc\ Fixed\ 13
"set guifont=Monospace\ 10
"set guifont=Liberation\ Mono\ 11
set guifont=Fixed\ 12
set ai
set sw=2
set ts=2
set incsearch
set hidden  " allow to abandon a changed buffer (that's not closing it!)
"let myfiletypefile = "$VIM/myfiletypes.vim"
"let mysyntaxfile   = "$VIM/mysyntax.vim"
"let Tlist_Ctags_Cmd = "D:/apps/cygwin/bin/ctags.exe"
"set wm=2
set directory=/home/thron7/tmp/vim_swp/  " where to put swp files
set wildmode=longest,list
set wrap
set showmatch
set expandtab
set ruler  " show cursor position in corner
set backspace=indent,eol,start
set viminfo='10,\"0,:50,/10,n~/.viminfo
"           ^ remember 10 marks
"               ^ dont save lines in each register
"                   ^ remember last 50 ":" commands
"                       ^ remember last 10 search/replace patterns
"                           ^ use this file for viminfo storage

" Key Mappings
	" cycle through windows
map <F12> <C-W><C-W>
map <S-F12> <C-W>W
  " cycle through tabs
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left>  :tabprevious<CR>
  " wrap lines
map <F11> :set invwrap<CR>
map! <F11> <Esc>:set invwrap<CR>a
" <F10> is captured by Gnome Desktop
	" save
map <F9> :w<CR>
map! <F9> <Esc>:w<CR>a
  " next buffer
map <F8> :bnext<CR>
  " previous buffer
map <F7> :bNext<CR>
  " format paragraph
"map <F6> gqap
"map! <F6> <Esc>gqapa
  " tw=80
map <F6> :set tw=80<CR>
map <S-F6> :set tw=0<CR>
  " split/unsplit
map <F5>   :split<CR>
map <S-F5> <C-w>o<CR>
  " cursor motion
map ^A   <Home>
map ^E   <End>
  " visual up and down in long lines
" the next two interfer with text-completion drop-downs!
"imap <up> <C-O>gk
"imap <down> <C-O>gj
nmap <up> gk
nmap <down> gj
nmap k gk
nmap j gj
  " typing macros
map! {{ {<CR>}<Esc>O	
map! [[ [<CR>]<Esc>O	
  " svn commit in ex-mode
cmap  ccc !svn ci -m"[BUG \#0000] " %

syntax on
"colorscheme blue
colorscheme slate
"highlight Normal guifg=yellow

" Python settings
autocmd FileType python set ts=4 sw=4

" Taglist settings
let Tlist_Inc_Winwidth = 0
cab TT TlistToggle

""""""""""""""""""""""""""""""""""""""""
"NoMatchParen
"let loaded_matchparen = 1
