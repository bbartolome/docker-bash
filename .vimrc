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
Plugin 'heavenshell/vim-jsdoc'

Plugin 'scrooloose/syntastic'                                                                          
let g:syntastic_javascript_checkers=['eslint']                                                  
let g:syntastic_check_on_open=1
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

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
