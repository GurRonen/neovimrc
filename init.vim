call plug#begin('~/.vim/plugged')

Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'zchee/deoplete-jedi'
Plug 'nsf/gocode'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'

Plug 'altercation/vim-colors-solarized'
Plug 'crusoexia/vim-monokai'

call plug#end()

" Deoplete
let g:deoplete#enable_at_startup = 1

" Neoformat

augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat


" Nerdtree
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <A-1> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

let python_highlight_all=1
set encoding=utf-8
set number
syntax on
colorscheme monokai

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l<Paste>

let mapleader=","


inoremap ;; <Esc>
nnoremap <silent> <Space> :NERDTreeToggle<CR>

" toggle line numbers
nnoremap <silent> <leader>n :set number! number?<CR>

" toggle line wrap
nnoremap <silent> <leader>w :set wrap! wrap?<CR>

" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>

" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>

" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
" https://github.com/neovim/neovim/issues/2048
nnoremap <C-h> :bp<CR>

" close buffer
nnoremap <silent> <leader>bd :bd<CR>

nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

map <F5> <Esc>:w<CR>:!clear;python %<CR>

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix<Paste>

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/



