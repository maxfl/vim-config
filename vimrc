call plug#begin('~/.local/share/vim/plugged')

    " Plug 'wuelnerdotexe/human.vim'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-repeat'
    Plug 'inkarkat/vim-visualrepeat'

    " Editing
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'kopischke/vim-fetch'

    Plug 'simnalamburt/vim-mundo'
    nmap <Leader>uu <CMD>MundoToggle<CR>
    let g:mundo_preview_bottom=1
    let g:mundo_width=30
    let g:mundo_right=1

    if v:version>=800
        Plug 'mg979/vim-visual-multi'
    endif

    " Buffers and windows
    set hidden
    if v:version>=800
        Plug 'vim-ctrlspace/vim-ctrlspace'
    endif

    " Options
    set mouse=a

    " Motion
    Plug 'rhysd/clever-f.vim'
    nnoremap <Leader>fr <Plug>(clever-f-reset)
    nnoremap ; <Plug>(clever-f-repeat-forward)

    " Jumps and conflicts
    Plug 'inkarkat/vim-ingo-library'
    Plug 'inkarkat/vim-EnhancedJumps',
    let g:EnhancedJumps_CaptureJumpMessages=0
    nmap <C-n> <Plug>EnhancedJumpsRemoteOlder
    nmap <C-p> <Plug>EnhancedJumpsRemoteNewer
    Plug 'inkarkat/vim-ConflictDetection'

    " Snippets
    if v:version>=800
        Plug 'honza/vim-snippets'
        Plug 'SirVer/ultisnips'
        let g:UltiSnipsExpandTrigger='<Tab>'
    endif

    let g:NERDCreateDefaultMappings = 1
    let g:NERDSpaceDelims = 1
    Plug 'preservim/nerdcommenter'

    " Files and folders
    Plug 'francoiscabrol/ranger.vim'

    " Filetypes
    Plug 'georgewitteman/vim-fish'
call plug#end()

" Editing
set undofile
set undodir=~/.vimundo/

" Interface
set relativenumber
set number

" Indents
set tabstop=4 sts=4 shiftwidth=4 expandtab

" Search
set smartcase

"
" Mappings
"
nnoremap <F2> <CMD>w<CR>
inoremap <F2> <CMD>w<CR>

" Clipboard mappings
" Make x, d and dd delete with no register
noremap x  "_x
vnoremap x  "_x
noremap d  "_d
vnoremap d  "_d
nnoremap dd "_dd

" use m (move) for deleting with register
noremap m  d
vnoremap m  d
nnoremap mm dd
nnoremap gm m
