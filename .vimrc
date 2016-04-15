set nocompatible              " be iMproved, required

filetype off                  " required
syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set number
set path=$PWD/**
set mouse=a
set hlsearch
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
set colorcolumn=100
set statusline=
set statusline+=%2*[%n%H%M%R%W]%*\
set statusline+=%-40f\
set statusline+=%=%1*%y%*%*\
set statusline+=%10((%l,%c)%)\
set laststatus=2
