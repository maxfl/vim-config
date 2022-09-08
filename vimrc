call plug#begin('~/.local/share/vim/plugged')

" Plug 'wuelnerdotexe/human.vim'
Plug 'tpope/vim-sensible'

" Editing
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

if v:version>=800
    Plug 'mg979/vim-visual-multi'
endif

" Buffers and windows
set hidden
Plug 'vim-ctrlspace/vim-ctrlspace'

call plug#end()

" Indents
set tabstop=4 sts=4 shiftwidth=4 expandtab
" Search
set smartcase
