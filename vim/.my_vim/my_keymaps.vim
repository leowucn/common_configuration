let mapleader = "z"

"UndotreeToggle
nnoremap <Leader>u :UndotreeToggle<cr>  
" 目录树
map <Leader>n :NERDTreeToggle<CR>
" 标签
nmap <F8> :TagbarToggle<CR>
" 关闭高亮
nnoremap <leader><space> :nohlsearch<CR>
" jk is escape
inoremap jj  <Esc>

" 打开Ag开始搜索关键字
nnoremap <leader>a :Ag<space>  
"nnoremap <leader>b :cclose
nnoremap <leader>c :cclose<CR>

" 模糊文件名搜索
nnoremap <leader>p :CtrlP<CR>

" git提交信息显示
nmap <Leader>gm <Plug>(git-messenger)

nmap <Leader>em <Plug>(easymotion-s2)

nnoremap <Leader>f :%!python -m json.tool<CR>

" 使用F2切换vim的paste和nopaste选项。当是paste时，方便在vim中粘贴有格式的文本或者代码，但是无法使用jf等vim快捷键；当是nopaste时，vim中粘贴有格式的文本或者代码有问题，但是可以使用vim快捷键  
set pastetoggle=<F2>
