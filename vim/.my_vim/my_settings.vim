" Ignore these directories
set wildignore+=*/out/**
set wildignore+=*/vendor/**

" Sets how many lines of history VIM has to remember
set history=700

set updatetime=300

" Enable yy to clipboard
set clipboard=unnamed

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
set nocompatible  
set backspace=indent,eol,start
set pastetoggle=<F10>

" Set to auto read when a file is changed from the outside
set autoread

" Color Scheme
syntax enable
syntax on

set nu
set t_Co=256


colorscheme gruvbox


set rtp+=$GOROOT/misc/vim
au BufRead,BufNewFile *.go set filetype=go
filetype plugin indent on

" Enable OS mouse clicking and scrolling
"
" Note for Mac OS X: Requires SIMBL and MouseTerm
"
" http://www.culater.net/software/SIMBL/SIMBL.php
" https://bitheap.org/mouseterm/
if has("mouse")
   set mouse=a
endif

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" No swap files, use version control instead
set noswapfile

" Fix Alt key in MacVIM GUI
" TODO - Fix in MacVIM terminal
if has("gui_macvim")
  set macmeta
endif

" Show line numbers
set number
" Show column numbers
set ruler
"显示相对行号
set relativenumber
" Case-insensitive search
set ignorecase
" Highlight search results
set hlsearch
set incsearch           " search as characters are entered
"
" Default to soft tabs, 2 spaces
set sw=4
set sts=4
syntax on
set nu
set t_Co=256
"高亮显示所在行和所在列
"set cursorline cursorcolumn
"用于上下翻页时光标之上或之下至少显示多少行
set scrolloff=8
"this line resolve the problem of vim scrowing slow
set lazyredraw  
"hi MatchParen cterm=none ctermbg=green ctermfg=blue
set showmatch
set cursorline          " highlight current line"
set wildmenu            " visual autocomplete for command menu"
set encoding=utf-8
set clipboard=unnamed
set rtp+=$HOME/.vim/bundle/Vundle.vim
set mmp=5000

