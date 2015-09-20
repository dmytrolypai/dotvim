set nocompatible " ignore vi compatibility, also required for Vundle
filetype off " required for Vundle

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" Initialize
call vundle#begin()

" Let Vundle manage itself. Required.
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" All plugins must be added here

call vundle#end() " required for Vundle
filetype plugin indent on " required for Vundle

syntax on
set t_Co=16 " needed for Solarized
set background=light
colorscheme solarized

