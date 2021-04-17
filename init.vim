set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
"Plug 'tpope/vim-fugitive' - Plugin za git ali nije potreban jer se git moze
"iz terminala samo pokretat"

call plug#end()

syntax on
colorscheme onedark
set number
