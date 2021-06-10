call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'dracula/vim'

call plug#end()

"VIM CONFIG"
set tabstop=8 
set softtabstop=0
set expandtab 
set shiftwidth=4 
set smarttab
set number
set mouse=a
set autoindent
set relativenumber
syntax enable 

"PLUGINS CONFIG"
nnoremap <C-e> :NERDTreeToggle<CR>

"DARK RELATED CONFIG"
let g:dart_format_on_save = 1

"THEME RELATED"
"colorscheme base16-default-dark"
"colorscheme wal"
colorscheme dracula
set termguicolors

