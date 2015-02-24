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
set relativenumber
set smartindent
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
imap jk <Esc>
noremap <F5> :w <cr>
nnoremap <F6> :buffers<CR>:buffer<Space>
nnoremap <C-l> :set relativenumber! <cr>

" indentLine configuration
let g:indentLine_color_term = 236
let g:indentLine_char = '|'

" NERDTree configuration
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" vim-airline configuration
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
