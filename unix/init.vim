syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'sainnhe/edge'
call plug#end()

if has('termguicolors')
	set termguicolors
endif

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_cursor = 'purple'

colorscheme edge 
let g:airline_theme = 'edge'

map <C-d> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

