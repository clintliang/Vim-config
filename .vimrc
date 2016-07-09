set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'nono/jquery.vim'
Plugin 'burnettk/vim-angular'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-rails'
Plugin 'yggdroot/indentline'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on
filetype plugin on
filetype indent on

set autoindent
"set smartindent
set nu
set nocompatible

" tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set guioptions-=T
set nohlsearch
set incsearch
set showmatch
set history=100
set listchars=tab:→\ ,trail:.
set list
set cursorline

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" change directory to the current buffer's file's directory
autocmd BufEnter * lcd %:p:h
" get rid of the annoying bell
autocmd VimEnter * set vb t_vb=

syntax on
"set background=dark
set t_Co=256
colorscheme molokai
"colorscheme solarized
let g:molokai_original = 1

" .tex files should be treated as latex files
let g:tex_flavor='latex'
" generate pdfs from latex
let g:Tex_DefaultTargetFormat='pdf'
" set the pdf viewer
let g:Tex_ViewRule_pdf='evince'

" NERDTree settings
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

