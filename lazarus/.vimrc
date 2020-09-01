call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

let g:airline_theme='base16_pop'
let g:airline_powerline_fonts = 0

call plug#end()

syntax on                "Enable syntax coloring
set hlsearch             "Highlight matches in search
set incsearch            "Find as you type
set linebreak            "Break lines when appropriate
set nocursorline         "Highlight current line
set ruler                "Show where we are
set autoindent           "Code indents automatically
set relativenumber       "Enabling relative numbering
set nu                   "Set line numbering
set wrap
set spelllang=en

set tabstop=4
set shiftwidth=4

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

colorscheme ron
" Enable italics, Make sure this is immediately after colorscheme
" https://stackoverflow.com/questions/3494435/vimrc-make-comments-italic
highlight Comment cterm=italic

map <C-o> :NERDTreeToggle<CR>
map <C-n> :set nonu<CR>
map <C-m> :set norelativenumber<CR>
