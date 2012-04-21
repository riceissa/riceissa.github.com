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
        let localleader = '\\'
        nnoremap <silent> <leader><leader> :nohlsearch<CR>
        nnoremap <silent> <leader>c :set list!<CR>
        nnoremap <silent> <leader>n :set number!<CR>
        nnoremap <silent> <leader>p :set paste!<CR>
        nnoremap <silent> <leader>s :set spell!<CR>
        nnoremap <silent> <leader>w :set wrap!<CR>
        nnoremap <silent> <leader>e :tabnew $MYVIMRC<CR>
        nnoremap <silent> <leader>r :source $MYVIMRC<CR>
        nnoremap <leader>" viw<Esc>a"<Esc>hbi"<Esc>lel
        nnoremap <leader>' viw<Esc>a'<Esc>hbi'<Esc>lel
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
    inoremap jj <Esc>
    inoremap kk <Esc>
    inoremap jk <Esc>
    inoremap kj <Esc>
    nnoremap j gj
    nnoremap k gk
    nnoremap H ^
    nnoremap L $
    nnoremap <silent> K :bn<CR>
    inoremap <C-u> <Esc>viwUea
    nnoremap <C-u> viwU
    nnoremap - ddp
    nnoremap _ ddkP
    onoremap p i(
    onoremap in( :<C-u>normal! f(vi(<CR>
    onoremap il( :<C-u>normal! F)vi(<CR>
" Other
    set backspace=indent,eol,start cmdheight=2 encoding=utf-8 hidden
    set nospell number ruler scrolloff=5 showcmd showmode
    set spellfile=~/.spell.en.add title ttyfast wildmenu wrap
" HTML options
    augroup filetype_html
        autocmd filetype html setlocal shiftwidth=2 softtabstop=2 tabstop=2
        autocmd filetype xhtml setlocal shiftwidth=2 softtabstop=2 tabstop=2
        autocmd filetype xml setlocal shiftwidth=2 softtabstop=2 tabstop=2
    augroup END
" LaTeX options
    let g:tex_flavor='latex'
    augroup filetype_tex
        autocmd!
        autocmd filetype tex nnoremap <buffer> <localleader>c I%<Esc>
        autocmd filetype tex nnoremap <buffer> <silent> <localleader><localleader> :!pdflatex %<CR>
        autocmd filetype tex inoremap <buffer> <F5>b \textbf{}<Esc>i
        autocmd filetype tex inoremap <buffer> <F5>h \emph{}<Esc>i
        autocmd filetype tex inoremap <buffer> <F5>u \ul{}<Esc>i
        autocmd filetype tex inoremap <buffer> <F5>t \term{}<Esc>i
        autocmd filetype tex inoremap <buffer> <F5>m \(\)<Esc>hi
        autocmd filetype tex inoremap <buffer> <F5>p \[<CR><CR>\]<Esc>kI
        autocmd filetype tex inoremap <buffer> <F5>i <Esc>:set paste<CR>i\begin{itemize}<CR>    \item <CR>\end{itemize}<Esc>:set nopaste<CR>kA
        autocmd filetype tex inoremap <buffer> <F5>e <Esc>:set paste<CR>i\begin{enumerate}<CR>    \item <CR>\end{enumerate}<Esc>:set nopaste<CR>kA
    augroup END
" Python options
    augroup filetype_python
        autocmd!
        autocmd filetype python nnoremap <buffer> <localleader>c I#<Esc>
        autocmd filetype python :iabbrev <buffer> iff if:<left>
    augroup END
" Abbreviations
    iabbrev adn and
    iabbrev tehn then
    iabbrev waht what
