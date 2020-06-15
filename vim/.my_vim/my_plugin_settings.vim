" fatih/vim-go
" https://github.com/fatih/vim-go
"setlocal omnifunc=go#complete#Complete
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1 
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:godef_split = 2
let g:go_def_mode='godef'

" NERDTree.vim
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=45
let NERDTreeShowHidden=1
"let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1
let g:NERDTreeIgnore = ['\~$','.meta']
autocmd bufenter * if ((winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") || (winnr("$") == 1 && exists("b:Tagbar") && b:Tagbar == "primary")) | q | endif

" Tagbar
" https://github.com/majutsushi/tagbar
let g:tagbar_width = 22     "设置宽度"
"let g:tagbar_show_linenumbers = 1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"============neocomplcache===================
let g:neocomplete#enable_at_startup = 1
set completeopt=menu,longest

"=================undo-tree==================
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

"==================CtrlP settings============
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

"=================pydiction==================
let g:pydiction_location = '/home/leo/.vim/bundle/pydiction/complete-dict'


"=================the silver search==================
let g:ackprg = 'ag --nogroup --nocolor --column'

"=================auto run ctags==================
let g:autotagTagsFile=".tags"
let g:tagbar_width = 38

"=================vim-airline-themes==================
"let g:airline_theme='molokai'
"let g:airline_theme='solarized'
let g:airline_theme='understated'


let g:solarized_termcolors=256
