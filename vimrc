set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'Quramy/tsuquyomi'
" Plugin 'Shougo/vimproc.vim'
" Plugin 'chriskempson/base16-vim'
Plugin 'sickill/vim-monokai'
"Plugin 'tomasr/molokai'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tfnico/vim-gradle'
Plugin 'scrooloose/nerdcommenter'
Plugin 'matze/vim-move'
" Plugin 'Shougo/unite.vim'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'jaxbot/browserlink.vim'
" Plugin 'davidhalter/jedi-vim'
Plugin 'sirver/UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'

call vundle#end()
filetype plugin indent on

syntax on
set number	

noremap <S-j> <C-e>
noremap <S-k> <C-y>

""""""" IntelliJ Configs
map <F3> :NERDTreeTabsToggle<CR> 
" Refactor
map <F6> :JavaRename
" Duplicate Line
map <C-d> Vyp 
" Remove Line
map <C-y> dd
" Comment
map <C-_> <leader>c<space>h 
" Override/implement methods
map <C-I> :JavaImpl 
" Getter
map <C-G> :JavaGet<CR>
" Setter
map <C-T> :JavaSet<CR>
" Const
map <C-C> :JavaConstructor<CR>
" Const with no vars
map <C-V> :JavaConstructor!<CR>
" Go to class declaration
map <C-B> :JavaSearch<CR>
" Optimize imports
map <C-O> :JavaImportOrganize<CR>
" Run (udm or generic main class)
map <F10> :call JavaBuild()<CR> 
" Run (current java file)
map <F11> :Java %<CR>

function! JavaBuild()
    if(getcwd() == "/home/osum4est/gdrive/ultimate-dungeon-master")
        compiler gradlew 
        make "desktop:run" 
    else
        :Java<CR>
    endif
endfunc

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward) map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)




" <Leader>f{char} to move to {char}
 map  <S-f> <Plug>(easymotion-bd-f)
 nmap <S-f> <Plug>(easymotion-overwin-f)
"
" " s{char}{char} to move to {char}{char}
 nmap s <Plug>(easymotion-overwin-f2)

"" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
 map  <Leader>w <Plug>(easymotion-bd-w)
 nmap <Leader>w <Plug>(easymotion-overwin-w)






"function! s:incsearch_config(...) abort
    "return incsearch#util#deepextend(deepcopy({
      "\   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
      "\   'keymap': {
      "\     "\<CR>": '<Over>(easymotion)'
      "\   
    "},
      "\   'is_expr': 0
      "\ 
    "}), get(a:, 1, {}))
"endfunction

"noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
"noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
"noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

nnoremap wh <C-W><C-H>
nnoremap wj <C-W><C-J>
nnoremap wk <C-W><C-K>
nnoremap wl <C-W><C-L>

nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>

filetype plugin on
let g:nerdtree_tabs_open_on_console_startup=1
let g:EclimCompletionMethod = 'omnifunc'
let g:move_key_modifier = 'C'
let g:UltiSnipsExpandTrigger="<C-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='base16'
let g:airline#extensions#tabline#fnamemod=':t'
set background=dark
set ic
"set tabline=%t

" let base16colorspace=256
"colorscheme base16-default
colorscheme monokai

" let g:neocomplete#enable_at_startup = 1
" autocmd FileType typescript setlocal omnifunc=TSScompleteFunc

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
