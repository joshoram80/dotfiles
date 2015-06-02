set mouse=a
set encoding=utf-8
execute pathogen#infect()
filetype plugin indent on

syntax enable

let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" Always show statusline
set laststatus=2

set rtp+=$HOME/.anyenv/envs/pyenv/versions/2.7.9/lib/python2.7/site-packages/powerline/bindings/vim
 
" These lines setup the environment to show graphics and colors correctly.
set nocompatible

let g:minBufExplForceSyntaxEnable = 1
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text

