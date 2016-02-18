set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'sickill/vim-monokai'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'suan/vim-instant-markdown'
call vundle#end()
filetype plugin indent on

syntax on
set number	
map <F3> :NERDTreeTabsToggle<CR> 
nnoremap wh <C-W><C-H>
nnoremap wj <C-W><C-J>
nnoremap wk <C-W><C-K>
nnoremap wl <C-W><C-L>

nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>

filetype plugin on

let g:nerdtree_tabs_open_on_console_startup=1
set background=dark

" let base16colorspace=256
"colorscheme base16-default
colorscheme monokai

" let g:neocomplete#enable_at_startup = 1

" autocmd FileType typescript setlocal omnifunc=TSScompleteFunc

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
