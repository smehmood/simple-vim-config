" VUNDLE START
set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" General plugins
Plugin 'scrooloose/nerdtree' " file browser
Plugin 'tpope/vim-commentary' " comment lines
Plugin 'kien/ctrlp.vim' " fuzzy file & buffer search
Plugin 'fholgado/minibufexpl.vim' " buffer management
Plugin 'altercation/vim-colors-solarized' " color scheme

" Git plugins
Plugin 'tpope/vim-fugitive'

" Clojure plugins
Plugin 'tpope/vim-fireplace'

" Node.js plugins
Plugin 'moll/vim-node'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE END

" http://vimdoc.sourceforge.net/htmldoc/starting.html#vimrc

" Key mappings
let mapleader=","
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l


" NerdTree
map <C-n> :NERDTreeToggle<CR>
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
noremap <C-y> :CtrlPBuffer<CR>

" Ctrl-P
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" MiniBufExpl
map <Leader>t :MBEToggle<cr> 
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>

" Curly brace completion
inoremap {<cr> {<cr>}<c-o>O

" General configuration
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should


syntax enable           " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab " soft, 2-space tabs

" Solarized config
" set background=light
" colorscheme solarized

