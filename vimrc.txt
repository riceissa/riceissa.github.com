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
        let mapleader=' '
        nnoremap <silent> <leader><leader> :nohlsearch<CR>
        nnoremap <silent> <leader>c :set list!<CR>
        nnoremap <silent> <leader>n :set number!<CR>
        nnoremap <silent> <leader>p :set paste!<CR>
        nnoremap <silent> <leader>s :set spell!<CR>
        nnoremap <silent> <leader>w :set wrap!<CR>
    " Scrolling (use <space>{j,k} or <C-{j,k}> to scroll)
        nnoremap <leader>j <C-d>
        vnoremap <leader>j <C-d>
        nnoremap <C-j> <C-d>
        vnoremap <C-j> <C-d>
        nnoremap <leader>k <C-u>
        vnoremap <leader>k <C-u>
        nnoremap <C-k> <C-u>
        vnoremap <C-k> <C-u>
    " Tabs
        nnoremap <silent> <leader>t :tabnew<CR>
        nnoremap <silent> <C-t> :tabnew<CR>
        nnoremap <silent> <leader>l :tabn<CR>
        nnoremap <silent> <C-l> :tabn<CR>
        nnoremap <silent> <leader>h :tabp<CR>
        nnoremap <silent> <C-h> :tabp<CR>
    inoremap jj <esc>
    inoremap kk <esc>
    nnoremap j gj
    nnoremap k gk
    nnoremap <silent> K :bn<CR>
" Other
    set backspace=indent,eol,start cmdheight=2 encoding=utf-8 hidden
    set nospell number ruler scrolloff=5 showcmd showmode
    set spellfile=~/.spell.en.add title ttyfast wildmenu wrap
" HTML options
    autocmd filetype html setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd filetype xhtml setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd filetype xml setlocal shiftwidth=2 softtabstop=2 tabstop=2
" LaTeX options
    let g:tex_flavor='latex'
    nnoremap <silent> <leader>/ :!pdflatex %<CR>
    inoremap <F5>b \textbf{}<Esc>i
    inoremap <F5>t \term{}<Esc>i
    inoremap <F5>h \emph{}<Esc>i
    inoremap <F5>m \(\)<esc>hi
    inoremap <F5>p \[<CR><CR>\]<esc>kI
    inoremap <silent> <F5>i <esc>:set paste<CR>i\begin{itemize}<CR>    \item <CR>\end{itemize}<esc>:set nopaste<CR>kA
    inoremap <silent> <F5>e <Esc>:set paste<CR>i\begin{enumerate}<CR>    \item <CR>\end{enumerate}<esc>:set nopaste<CR>kA
