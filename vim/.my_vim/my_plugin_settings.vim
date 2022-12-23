set runtimepath^=~/.vim/plugged//ag"
"
"
"
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
let g:go_def_mode='gopls'

" NERDTree.vim
let g:NERDTreeMouseMode = 3
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=45
let NERDTreeShowHidden=1
"let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1
let g:NERDTreeIgnore = ['\~$','.meta']
autocmd bufenter * if ((winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") || (winnr("$") == 1 && exists("b:Tagbar") && b:Tagbar == "primary")) | q | endif
autocmd BufEnter NERD_tree_* | execute 'normal R'

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


" ------------------vim-auto-save------------------
let g:auto_save = 1  " enable AutoSave on Vim startup

"------------------you-complete-me-----------------
let b:ycm_enable_inlay_hints = 1
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项


" ------------------vim-syntastic/syntastic-----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"------------------luochen1990/rainbow--------------------
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


"------------------ctrlp--------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
