call plug#begin()
"############################   LANGUAGE FEATURES
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'

"############################   UTILS
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"############################   THEMES
Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'dracula/vim'

call plug#end()

"############################   THEME RELATED"
"colorscheme base16-default-dark"
"colorscheme wal"
colorscheme dracula
set termguicolors

"############################   VIM CONFIG"
set tabstop=4 
set softtabstop=0
set expandtab 
set shiftwidth=4 
set smarttab
set number
set mouse=a
set autoindent
set relativenumber
set clipboard+=unnamedplus
set updatetime=100 
"set signcolumn=yes
syntax enable 

"############################   DART RELATED CONFIG
autocmd FileType dart setlocal shiftwidth=2 tabstop=2 expandtab noautoindent 
let g:dart_format_on_save = 1

"############################   PLUGINS KEYMAPS 
nnoremap <C-e> :NERDTreeToggle<CR>

"############################   COPY PASTE KEYMAPS 
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-v> "+p
vnoremap <C-v> "+p

"############################   JUMPTO KEYMAPS 
nmap <silent>gd <Plug>(coc-definitions)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>g[ <Plug>(coc-diagnostic-next)
nmap <silent>g] <Plug>(coc-diagnostic-prev)
nmap <silent>gj <Plug>(coc-diagnostic-next-error)
nmap <silent>gk <Plug>(coc-diagnostic-prev-error)
vmap <silent>gd <Plug>(coc-definitions)
vmap <silent>gr <Plug>(coc-references)
vmap <silent>g[ <Plug>(coc-diagnostic-next)
vmap <silent>g] <Plug>(coc-diagnostic-prev)
vmap <silent>gj <Plug>(coc-diagnostic-next-error)
vmap <silent>gk <Plug>(coc-diagnostic-prev-error)

nnoremap <C-g> :GFiles<CR>
":Files 
":GFiles
":GFiles?

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

"############################   SUGGESTIONS/AUTOCOMPLETE KEYMAPS 
inoremap <silent><expr> <c-space> coc#refresh()
nmap <C-m> <plug>NERDCommenterToggle
vmap <C-m> <plug>NERDCommenterToggle

"############################   NAVIGATION AND SELECTION 
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"


"############################   FLUTTER DEV 

nmap <C-a> <Plug>(coc-codeaction-selected) 
xmap <C-a> <Plug>(coc-codeaction-selected) 
nmap <C-x> :CocList FlutterEmulators<CR> 
nmap <C-f> :CocCommnad flutter.run
nmap <C-d> :CocCommand flutter.devices<CR> 
nmap <C-q> :CocCommand flutter.dev.quit<CR>
nmap <C-s> :CocCommand flutter.dev.hotRestart<CR> 
nmap <C-b> :CocCommand flutter.dev.openDevToolsProfiler<CR>
