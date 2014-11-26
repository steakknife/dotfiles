" Vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'

" themes and colors
"Bundle 'altercation/vim-colors-solarized'

" Vundles start
Bundle 'godlygeek/tabular'

" languages
Bundle 'Blackrush/vim-gocode'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'

" SCM
Bundle 'airblade/vim-gitgutter'

Bundle 'scrooloose/nerdtree'
" Vundles end

filetype plugin indent on
" Vundle end

set sts=2 ts=2 sw=2 expandtab
set wildmenu                  " menu has tab completion
syntax on

" Disable annoying bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" NERDtree
" automatically open if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

" Toggle NERDTree on and off
map <silent> <f7> :NERDTreeToggle<cr>
vmap <silent> <f7> :NERDTreeToggle<cr>


" Toggle paste mode with F2
set pastetoggle=<F2>
map <silent> <F2> :set invpaste<cr>

" Toggle line numbers with F3
map <silent> <F3> :set invnumber<cr>
map <silent> Q :q!<cr>
map <silent> q :wq<cr>


" copy to system (OSX only) 
nmap <silent> <F4> :.w !pbcopy<CR><CR>
vmap <silent> <F4> :w !pbcopy<CR><CR>

" paste from system (OSX only) 
nmap <silent> <F5> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <silent> <F5> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

nmap <silent> <F6> :GitGutterToggle<CR>
imap <silent> <F5> <Esc>:GitGutterToggle<CR>

" Go
au BufRead,BufNewFile *.go set filetype=go

" Dont' show welcome
set shortmess+=I

" Prevent visual selection with mouse
set mouse-=a

" always show vim-airline
set laststatus=2
"set showcmd 
"set lazyredraw
"set cmdheight=1
set encoding=utf-8

" color scheme
set background=dark
""set background=light
""let g:solarized_termcolors = 256
""et g:solarized_visibility = "high"
""et g:solarized_contrast = "high"
""let g:solarized_termtrans = 1
""let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
colorscheme slate
