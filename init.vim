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

let g:deoplete#enable_at_startup = 1

call plug#end()

"Neoformat

augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat


" Nerdtree
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <A-1> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1


"Split tansitions
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
