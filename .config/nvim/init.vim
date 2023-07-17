:call mkdir(stdpath('config'), 'p')
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let mapleader=","
source ~/.vimrc

set clipboard+=unnamedplus
