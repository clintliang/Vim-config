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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
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
Plugin 'Yggdroot/indentLine'
Plugin 'mxw/vim-jsx'
Plugin 'nono/vim-handlebars'
Plugin 'heavenshell/vim-jsdoc'

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

" backspace over everything in insert mode
set backspace=indent,eol,start

" tab settings
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set guioptions-=T
set nohlsearch
set incsearch
set showmatch
set history=100
set listchars=tab:→\ ,trail:.
set list
set cursorline

autocmd FileType php setlocal shiftwidth=4 tabstop=4

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

" indentLine settings
let g:indentLine_color_term = 239
" for jsx syntax
let g:syntastic_javascript_checkers = ['eslint']

" JsDoc
let g:jsdoc_input_description = 1
let g:jsdoc_enable_es6 = 1
