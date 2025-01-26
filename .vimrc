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
let g:netrw_winsize = 20

imap ,. <Esc>:tabn<CR>
nmap ,. :tabn<CR>
imap ., <Esc>:tabp<CR>
nmap ., :tabp<CR>

highlight LineNr ctermfg=lightblue
autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=green

hi Error ctermbg=NONE ctermfg=131 guibg=NONE guifg=#af5f5f cterm=reverse gui=reverse
hi CursorLine ctermbg=236 ctermfg=NONE guibg=#303030 guifg=NONE cterm=NONE gui=NONE
hi String ctermfg=LightCyan

nnoremap ,o :tabedit 
:set termwinsize=12x0
nnoremap ][ :term<CR>
