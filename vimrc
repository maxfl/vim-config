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
if v:version>=800
    Plug 'vim-ctrlspace/vim-ctrlspace'
endif

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-EnhancedJumps',
let g:EnhancedJumps_CaptureJumpMessages=0
nmap <C-n> <Plug>EnhancedJumpsRemoteOlder
nmap <C-p> <Plug>EnhancedJumpsRemoteNewer

call plug#end()

" Interface
set relativenumber
set number

" Indents
set tabstop=4 sts=4 shiftwidth=4 expandtab

" Search
set smartcase
