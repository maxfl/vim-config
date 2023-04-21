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

    Plug 't9md/vim-textmanip'
    xmap <C-j> <Plug>(textmanip-move-down)
    xmap <C-k> <Plug>(textmanip-move-up)
    xmap <C-h> <Plug>(textmanip-move-left)
    xmap <C-l> <Plug>(textmanip-move-right)
    function! TMoff()
        set ei+=TextYankPost
    endfunction
    function! TMon()
        set ei-=TextYankPost
    endfunction

    if v:version>=800
        Plug 'mg979/vim-visual-multi'
        let g:VM_theme = 'neon'
        vmap I <Plug>(VM-Visual-Cursors)
        vnoremap <Leader>I I

        " function! VM_Exit()
        "   let bn=string(bufnr())
        "   exe 'imap <buffer> <silent> <BS> <Cmd>lua require("pears").handle_backspace('.bn.')<CR>'
        "   exe 'imap <buffer> <silent> <CR> <Cmd>lua require("pears").handle_return('.bn.')<CR>'
        " endfunction
    endif

    " Buffers and windows
    set hidden
    " let g:CtrlSpaceSetDefaultMapping=1
    let g:CtrlSpaceUseTabline=1
    " let g:CtrlSpaceDefaultMappingKey='<C-Space> '
    let g:CtrlSpaceProjectRootMarkers = [ ".git", ".hg", ".svn", ".bzr", ".envrc", "_darcs", "CVS" ]
    nmap <M-u>    :CtrlSpaceGoUp<CR>
    nmap <M-S-u>  :CtrlSpaceGoDown<CR>
    if v:version>=800
        Plug 'vim-ctrlspace/vim-ctrlspace'
    else
        Plug 'vim-ctrlspace/vim-ctrlspace', {'branch': 'version_5'}
    endif

    " Options
    set mouse=a

    " Motion
    Plug 'rhysd/clever-f.vim'
    nnoremap <Leader>fr <Plug>(clever-f-reset)
    nnoremap ; <Plug>(clever-f-repeat-forward)

    " Code{
    Plug 'foosoft/vim-argwrap',
    nnoremap <Leader>, <CMD>ArgWrap<CR>

    Plug 'derekwyatt/vim-fswitch'
    let g:fsnonewfiles=1
    au! BufEnter *.cpp,*.c,*.C,*.cxx,*.cc,*.CC let b:fswitchdst = 'hpp,h,H,hh,HH,hxx' | exe "let b:fswitchlocs = '../inc,../include".",../".expand("%:h:h:t")."'"
    au! BufEnter *.hpp,*.h,*.H,*.hh,*.HH,*.hxx let b:fswitchdst = 'cpp,c,C,cc,CC,cxx' | let b:fswitchlocs = '../src'
    nmap <silent> <Leader>aa <CMD>FSHere<CR>
    nmap <silent> <Leader>ar <CMD>tab FSRight<CR>
    nmap <silent> <Leader>al <CMD>tab FSLeft<CR>
    nmap <silent> <Leader>aR <CMD>tab FSSplitRight<CR>
    nmap <silent> <Leader>aL <CMD>tab FSSplitLeft<CR>

    Plug 'tpope/vim-fugitive'

    " Jumps and conflicts
    Plug 'inkarkat/vim-ingo-library'
    Plug 'inkarkat/vim-EnhancedJumps',
    let g:EnhancedJumps_CaptureJumpMessages=0
    nmap <C-n> <Plug>EnhancedJumpsRemoteOlder
    nmap <C-p> <Plug>EnhancedJumpsRemoteNewer
    Plug 'inkarkat/vim-ConflictDetection'
    Plug 'inkarkat/vim-CountJump' "required by ConflictMotions
    Plug 'inkarkat/vim-ConflictMotions'
    let g:ConflictMotions_TakeMappingPrefix='<Leader>='

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

    " Diff
    Plug 'will133/vim-dirdiff'
    map <unique> <Leader>Dg <Plug>DirDiffGet
    map <unique> <Leader>Dp <Plug>DirDiffPut
    map <unique> <Leader>Dj <Plug>DirDiffNext
    map <unique> <Leader>Dk <Plug>DirDiffPrev

    Plug 'taze55/vim-dirdifftree'

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
set ignorecase

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
