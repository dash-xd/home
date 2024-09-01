set nocompatible

set number
set ruler
set foldmethod=indent
set foldlevel=99

set encoding=utf-8

syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

:imap jk <Esc>l
:imap kj <Esc>l

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
:set omnifunc=javascriptcomplete#CompleteJS

au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap ,t <Esc>:tabnew<CR>
set showtabline=2

imap ;l <Esc>:Lex<CR>
nmap ;l <Esc>:Lex<CR>
