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

" AlpacaTags
call dein#add('alpaca-tc/alpaca_tags')
augroup AlpacaTags
  autocmd!
  if exists(':Tags')
    autocmd BufWritePost Gemfile TagsBundle
      autocmd BufEnter * TagsSet
      " 毎回保存と同時更新する場合はコメントを外す
      "     " autocmd BufWritePost * TagsUpdate
  endif
augroup END

" Ruby
call dein#add('tpope/vim-rails', {'on_ft' : 'ruby'})
call dein#add('basyura/unite-rails')

" JSX
call dein#add('mxw/vim-jsx')

" JavaScript
call dein#add('othree/yajs.vim')

call dein#end()

filetype plugin indent on
