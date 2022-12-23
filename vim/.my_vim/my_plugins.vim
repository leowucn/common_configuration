set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'mbbill/undotree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'rhysd/git-messenger.vim'
Plugin '907th/vim-auto-save'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'luochen1990/rainbow'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'simnalamburt/vim-mundo'
Plugin 'easymotion/vim-easymotion'
Plugin 'elzr/vim-json'

call vundle#end()            " required
filetype plugin indent on    " required
