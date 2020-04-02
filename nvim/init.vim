set nocompatible
colorscheme kosmos

set number
set relativenumber
set hidden

set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on
filetype plugin indent on

set textwidth=80
set colorcolumn=81
set wrap

" always display 5 lines above or below the cursor while scrolling
set scrolloff=5

" toggle spell check
map <F4> :set spell! spell?<CR>

" Plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'kien/rainbow_parentheses.vim'
Plug 'klen/python-mode'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

map <C-T> :Files<CR>

call plug#end()

" Rainbow Parentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
