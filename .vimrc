set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
set fileformats=unix,dos,mac
syntax enable

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible  " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" neocomplete
NeoBundle 'Shougo/neocomplete'

" neocomplete-php
NeoBundleLazy 'violetyk/neocomplete-php.vim', {'autoload': {'filetypes': ['php']}}
let g:neocomplete_php_locale = 'en'

" javascript
NeoBundleLazy 'JavaScript-syntax', {'autoload': {'filetypes': ['javascript']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload': {'filetypes': ['javascript']}}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
