call pathogen#infect()

set nocompatible

set modeline

set backspace=indent,eol,start

set enc=utf-8

set hidden

set scrolloff=3
set sidescroll=1
set sidescrolloff=10

if has("gui_running")
    colorscheme Tomorrow-Night
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=l
    set guioptions-=L
    set guifont=Inconsolata-dz:h14
    set antialias

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    set noballooneval
else
    colorscheme default
    set mouse=a
    set t_Co=16
endif

set ttyfast

set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault

set virtualedit+=block

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

set autoindent
set copyindent
set shiftround

set number
set numberwidth=5

set cursorline

set title
set showmode
set showcmd
set wildmenu
set wildignore=*.hi,*.o,_darcs,.git,*.rbc,*.ayc,Godeps,pkg
set ruler

set showmatch

if exists("+undofile")
    set undofile
    set undodir=/tmp
endif

set backupdir=/tmp
set directory=/tmp
set backup

set shell=bash

set matchtime=3

set showbreak=↪

set splitbelow
set splitright

set fillchars=diff:⣿

set autoread

set dictionary=/usr/share/dict/words

au VimResized * exe "normal! \<c-w>="

set wrap
set textwidth=78
set formatoptions=qrn1c

set pastetoggle=<f8>

if exists("+colorcolumn")
    set colorcolumn=+1
endif

let mapleader = ","
let maplocalleader = "\\"

syntax on
filetype on
filetype plugin on
filetype indent on

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

noremap H ^
noremap L $

nnoremap <silent> <leader>? :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

imap <C-c> <esc>,c<space>
nmap <C-c> ,c<space>
vmap <C-c> ,c<space>

inoremap <c-cr> <esc>A<cr>
inoremap <s-cr> <esc>A:<cr>

nmap ' `

nnoremap ; :

vmap Q gq
nmap Q gqap

nnoremap X cc<esc>

nnoremap Y y$

nnoremap j gj
nnoremap k gk

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>v <C-w>v

noremap <leader>V V`]

nnoremap <leader><space> :noh<cr>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=""<cr>

nnoremap <leader>a :Ack<space>

nnoremap <leader>s :%s//<left>

nnoremap <leader>f :Fmt<cr>:w<cr>

inoremap jj <esc>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <silent> <f3> :YRShow<cr>
inoremap <silent> <f3> <esc>:YRShow<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <f5> :GundoToggle<cr>

vnoremap . :normal .<CR>

nnoremap <C-f> :LookupFile<CR>

cnoremap <C-a> <home>
cnoremap <C-e> <end>

"cmap w!! w !sudo tee % >/dev/null

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scheme setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType erlang setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

autocmd FileType go setlocal noexpandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype go set makeprg=go\ build\ ./...

"let g:ctrlp_root_markers = ['tags', '.git', '.hg', '_darcs']

noremap <F1> :set invfullscreen<cr>
inoremap <F1> <esc>:set invfullscreen<cr>a

" Show highlighting group under cursor
nmap <F4> :echo 'hi<'.synIDattr(synID(line("."),col("."),1),"name").'> '
    \.'trans<'.synIDattr(synID(line("."),col("."),0),"name").'> '
    \.'lo<'.synIDattr(synIDtrans(synID(line("."),col("."),1)),"name").'>'<cr>

nmap <F6> :make<CR>:copen<CR>

nmap <F8> :TagbarToggle<CR>

let g:haskell_indent_if = 4
let g:haskell_indent_case = 4

let g:LookupFile_DefaultCmd = ':LUWalk'

let g:erlangHighlightErrors = 0

let g:netrw_list_hide= '.*\.ayc$,.*\.rbc$'

set nofoldenable

nnoremap K <nop>

function! s:ExecuteInShell(command) " {{{
    let command = join(map(split(a:command), 'expand(v:val)'))
    let winnr = bufwinnr('^' . command . '$')
    silent! execute  winnr < 0 ? 'botright vnew ' . fnameescape(command) : winnr . 'wincmd w'
    setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap nonumber
    echo 'Execute ' . command . '...'
    silent! execute 'silent %!'. command
    silent! redraw
    silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
    silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>:AnsiEsc<CR>'
    silent! execute 'nnoremap <silent> <buffer> q :q<CR>'
    silent! execute 'AnsiEsc'
    echo 'Shell command ' . command . ' executed.'
endfunction " }}}
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
nnoremap <leader>! :Shell<space>

let g:ackprg="ack --nocolor --nogroup --column"

au Filetype go nnoremap <buffer> <leader>i :exe 'GoImport ' . expand('<cword>')<CR>

au Filetype go nnoremap <leader>r :GoRun %<CR>

au Filetype go nnoremap <leader>gv :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>gs :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>gt :tab split <CR>:exe "GoDef"<CR>
