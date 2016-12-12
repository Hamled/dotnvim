" Setup dein
" For simplicity's sake, and because dein doesn't currently support
" git subrepo, this path is symlink'd to another directory
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.nvim/bundle/'))
call dein#add('Shougo/dein.vim')

" The basics
if exists('$TMUX')
  call dein#add('christoomey/vim-tmux-navigator')
endif

call dein#add('tomasr/molokai')

" Finish dein
call dein#end()

filetype plugin indent on
syntax enable
