set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
set fileformats=unix,dos,mac

syntax enable
set expandtab
set autoindent

if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

" tags
call dein#add('szw/vim-tags')
" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" Ruby
call dein#add('tpope/vim-rails', {'on_ft' : 'ruby'})
call dein#add('basyura/unite-rails')
call dein#add('tpope/vim-endwise')
call dein#add('thinca/vim-ref')

" JSX
call dein#add('mxw/vim-jsx')

" JavaScript
call dein#add('othree/yajs.vim')

" Syntastic
call dein#add('scrooloose/syntastic')
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }

call dein#end()

" Unite
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

filetype plugin indent on
