set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
"Plug 'tpope/vim-fugitive' - Plugin za git ali nije potreban jer se git moze
"iz terminala samo pokretat"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on
colorscheme onedark
set number
set tabstop=2
set shiftwidth=2

map <silent> <C-n> :NERDTreeFocus<CR>
let g:NERDTreeIgnore = ['^node_modules$']
 
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Press ii to return to normal mode when in Insert mode
inoremap ii <ESC>
inoremap <ESC> <NOP>

vnoremap ii <ESC>
vnoremap <ESC> <NOP>

cnoremap ii <ESC>
