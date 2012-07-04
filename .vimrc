filetype off
call pathogen#infect()
set nocompatible
set nomodeline
set modelines=0
" Disable highlighting for matching brackets
    let loaded_matchparen = 1
" File type and syntax
    filetype plugin indent on
    filetype indent off
    syntax on
" Show invisible characters
    set list listchars=eol:$,extends:>,precedes:<,nbsp:_,tab:>-,trail:@
" Searching options
    set hlsearch ignorecase incsearch showmatch smartcase
" Indenting options
    set autoindent
    set nocindent
    set nosmartindent
    set expandtab shiftwidth=4 softtabstop=4 tabstop=4
" Custom user mappings
    " Leader mappings
        let mapleader=','
        let localleader = '\\'
        nnoremap <silent> <leader><leader> :nohlsearch<CR>
        nnoremap <silent> <leader>I :set list!<CR>
        nnoremap <silent> <leader>N :set number!<CR>
        nnoremap <leader>p :set paste! paste?<CR>
        nnoremap <leader>sp :set spell! spell?<CR>
        nnoremap <leader>W :set wrap! wrap?<CR>
        nnoremap <silent> <leader>ev :tabnew $MYVIMRC<CR>
        nnoremap <leader>sv :source $MYVIMRC<CR>
        nnoremap <silent> <leader>t :NERDTreeToggle<CR>
        nnoremap <leader>u :GundoToggle<CR>
        nnoremap <leader>" viw<Esc>a"<Esc>hbi"<Esc>lel
        nnoremap <leader>' viw<Esc>a'<Esc>hbi'<Esc>lel
    " Scrolling
        nnoremap <Space> <C-f>
        nnoremap - <C-b>
    " Windows
        nnoremap <C-h> <C-w>h
        nnoremap <C-j> <C-w>j
        nnoremap <C-k> <C-w>k
        nnoremap <C-l> <C-w>l
    " Tabs
        nnoremap <silent> <C-t> :tabnew<CR>
        nnoremap <silent> <C-n> :tabn<CR>
        nnoremap <silent> <C-p> :tabp<CR>
    inoremap jj <Esc>
    inoremap kk <Esc>
    inoremap jk <Esc>
    inoremap kj <Esc>
    nnoremap j gj
    nnoremap k gk
    nnoremap H ^
    nnoremap L $
    nnoremap <Enter> o<Esc>
    nnoremap <silent> K :bn<CR>
    inoremap <C-u> <Esc>viwUea
    nnoremap <C-u> viwU
    onoremap p i(
    onoremap in( :<C-u>normal! f(vi(<CR>
    onoremap il( :<C-u>normal! F)vi(<CR>
" Other
    set backspace=indent,eol,start cmdheight=2 encoding=utf-8 gdefault
    set hidden nospell number ruler scrolloff=5 shiftround showcmd
    set showmode spellfile=~/.spell.en.add title ttyfast wildmenu wrap
" HTML options
    augroup filetype_html
        autocmd!
        autocmd filetype html setlocal shiftwidth=2 softtabstop=2 tabstop=2
        autocmd filetype xhtml setlocal shiftwidth=2 softtabstop=2 tabstop=2
        autocmd filetype xml setlocal shiftwidth=2 softtabstop=2 tabstop=2
    augroup END
" LaTeX options
    let g:tex_flavor='latex'
    augroup filetype_tex
        autocmd!
        autocmd filetype tex nnoremap <buffer> <silent> <localleader>la :!latexmk -pdf %<CR>
        autocmd filetype tex nnoremap <buffer> <silent> <localleader>xe :!xelatex %<CR>
    augroup END
" Plugins
    " EasyMotion
        let g:EasyMotion_leader_key = '<leader><leader>'
" Abbreviations
    iabbrev adn and
    iabbrev nad and
    iabbrev teh the
    iabbrev het the
    iabbrev tehn then
    iabbrev waht what
