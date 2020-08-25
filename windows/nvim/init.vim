call plug#begin('~/AppData/Local/nvim/')

Plug 'dracula/dracula-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:airline_theme='minimalist'
set tabstop=2
set shiftwidth=2
set expandtab
set number

call plug#end()

nnoremap <leader>fr :FlutterRun<cr>
