let mapleader = "z"

"UndotreeToggle
nnoremap <Leader>u :UndotreeToggle<cr>  
" NERDTree
map <Leader>n :NERDTreeToggle<CR>
" Tagbar
map <F4> :TagbarToggle<CR>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" jk is escape
inoremap jf  <Esc>

" open ag.vim
nnoremap <leader>g :Ag<space>  
"nnoremap <leader>b :cclose
nnoremap <leader>b :cclose<CR>

" git blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" 使用F2切换vim的paste和nopaste选项。当是paste时，方便在vim中粘贴有格式的文本或者代码，但是无法使用jf等vim快捷键；当是nopaste时，vim中粘贴有格式的文本或者代码有问题，但是可以使用vim快捷键  
set pastetoggle=<F2>
