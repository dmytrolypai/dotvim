set nocompatible " ignore vi compatibility, also required for Vundle
filetype off " required for Vundle

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" Initialize
call vundle#begin()

" Let Vundle manage itself. Required.
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'bling/vim-airline'
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

Plugin 'edkolev/tmuxline.vim'

Plugin 'vim-pandoc/vim-pandoc-syntax'
augroup pandoc_syntax
  au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc
augroup END
" Do not display pretty symbols
let g:pandoc#syntax#conceal#use = 0

" All plugins must be added here

call vundle#end() " required for Vundle
filetype plugin indent on " required for Vundle

""" General

" Limitations for security reasons
set secure
set modelines=0

" I save all the time, so no backup is needed
set nobackup
set nowritebackup
set noswapfile

set hidden " Allow buffer change without saving

set autochdir " Use the directory of a file as a working directory

""" Colors

syntax on
set t_Co=16 " needed for Solarized
set background=light
colorscheme solarized

""" Visual

set cursorline

set relativenumber
set number " Makes it a hybrid of relative numbers and absolute for current line

set laststatus=2 " Always show the status line

" Nice command completion above the status line
set wildmenu
set wildmode=list:longest,full

set scrolloff=3 " Number of lines around the cursor while scrolling

""" Editing

set expandtab " Convert <tab> to spaces

" Two spaces per <tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2

set backspace=indent,eol,start " Usual backspace behaviour

""" Search

set hlsearch " Highlight searches
set incsearch " Incremental searching
set ignorecase " Case insensitive...
set smartcase  " ...except if pattern contains upper case

""" Keys

let mapleader="\<Space>"

" ; is the same as : in NORMAL mode
nmap ; :

" Small changes for Workman layout (swap j and t)
nnoremap j t
map t j

" F1 behaves as Esc in many modes
imap <f1> <esc>
nmap <f1> <esc>
vmap <f1> <esc>

" Move by displayed lines
nnoremap j gj
nnoremap k gk

" Easier split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-T> <C-W><C-J>  " Workman layout adjustment
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Clear search highlights with Return
nnoremap <cr> :noh<cr><cr>

