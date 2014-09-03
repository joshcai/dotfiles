set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme molokai
set cursorline
set number
set relativenumber
set smartindent
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
imap jk <Esc>
noremap <F5> :w <cr>
nnoremap <F6> :buffers<CR>:buffer<Space>

let g:indentLine_color_term = 236
let g:indentLine_char = '|'

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nnoremap <C-l> :set relativenumber! <cr>

set laststatus=2
