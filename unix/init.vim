call plug#begin()
"############################   LANGUAGE FEATURES
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'

"############################   UTILS
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"############################   THEMES
Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'dracula/vim'

call plug#end()

"############################   VIM CONFIG"
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

"############################   DART RELATED CONFIG
let g:dart_format_on_save = 1

"############################   PLUGINS CONFIG
nnoremap <C-e> :NERDTreeToggle<CR>

"############################   COPY PASTE CONFIG
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-p> "+p
vnoremap <C-p> "+p

"############################   JUMP CONFIG
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-g> :GFiles<CR>

"############################   THEME RELATED"
"colorscheme base16-default-dark"
"colorscheme wal"
colorscheme dracula
set termguicolors

