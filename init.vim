set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
"Plug 'tpope/vim-fugitive' - Plugin za git ali nije potreban jer se git moze
"iz terminala samo pokretat"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

syntax on
colorscheme onedark
set number
map <silent> <C-n> :NERDTreeFocus<CR>
