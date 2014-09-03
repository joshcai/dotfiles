set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree.git'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme molokai
set cursorline
set number
set smartindent
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
imap jk <Esc>
nnoremap <F5> :buffers<CR>:buffer<Space>

let g:indentLine_color_term = 236
let g:indentLine_char = '|'

let NERDTreeShowHidden=1

function! NumberToggle()
    if(&relativenumber == 1)
      set number
    else
      set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
