let g:mapleader = "\<Space>"
let maplocalleader = "\<Space>"

set number relativenumber
set cursorline
set undofile
set gdefault
" set termguicolors
set incsearch
set hlsearch
" syntax on
set noswapfile
set scrolloff=999
" set smartindent
set ignorecase
set smartcase
set nowrap
" set timeoutlen=10000
" set ttimeoutlen=0
" set updatetime=750

set splitright splitbelow

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" highlight lCursor guifg=NONE guibg=Cyan
" language messages en_US.UTF-4

" disabling copying on deletion
noremap p "*p
noremap P "*P
noremap y "*y
nnoremap yy "*yy
nnoremap Y "*Y
noremap <leader>d "*d

map <C-j> 10j
map <C-k> 10k
map <A-j> 4j
map <A-k> 4k
imap <A-j> <Esc><A-j>
imap <A-k> <Esc><A-k>
imap <C-j> <Esc><C-j>
imap <C-k> <Esc><C-k>

map <leader>q <cmd>qa<cr>
map <leader>w <cmd>w<cr>
map <A-w> <cmd>w<cr>
map <A-q> <cmd>qa<cr>
map <leader>eq <cmd>bd<cr>

" keeping cursor cursor on the same position after exit from insert mode
imap <silent> <Esc> <Esc>`^

" finding selected (using in non-default register)
vnoremap / y/<C-r>"<cr>
vnoremap ? y?<C-r>"<cr>

" find and replace shortcut
" map <leader>rc :%s///gc<Left><Left><Left><Left>
" map <leader>ra :%s///g<Left><Left><Left>
" vmap <leader>ra :s///g<Left><Left><Left>

" vnoremap <leader>rr ""y:%s/<C-r>"//g<Left><Left>
" vnoremap <leader>rc :s/<C-r>"//g<Left><Left>
vnoremap <leader>rr ""y:%s/<C-r>"/
vnoremap <leader>rc :s/<C-r>"/

" leader as modifier
nnoremap <leader> <Nop>
vnoremap <leader> <Nop>

"switching places of two arguments in parentheses
noremap @s F,w""d])%""pl""dt,w""P

vmap u <Nop>
vmap U <Nop>
" map q <Nop>
" noremap Q q

map R $
map _ ^
map ) %
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j
nnoremap <leader>p o<Esc>"*p
nnoremap <leader>P O<Esc>"*p
nmap <silent> <leader><Esc> <cmd>noh<cr><cmd>echon ''<cr>
nmap <silent> <A-i> <cmd>noh<cr><cmd>echon ''<cr>
" nmap <silent> <leader><Esc> <cmd>noh<cr>
" nmap <silent> <A-'> <cmd>noh<cr>
map <A-v> <C-v>
vnoremap < <gv
vnoremap > >gv
nnoremap > >>
nnoremap < <<
nmap <C-a> ggVGo
imap <C-a> <Esc><C-a>
cmap <C-p> <C-r>*
imap <C-p> <C-r>*
nnoremap K i<CR><Esc>
nnoremap <leader>gi gi
map <leader>= gg=G<C-o>
map <leader>cp <cmd>let @+ = expand("%:p")<cr>

imap <C-Del> <C-o>de
cmap <C-Del> <C-\>e(strpart(getcmdline(), 0, getcmdpos()-1) . strpart(getcmdline(), getcmdpos()-1 + len(matchstr(getcmdline()[getcmdpos()-1:], '\w\+'))))<CR>
" cmap <silent> <C-y> <cr><cmd>noh<cr>
cmap <silent> <A-i> <cr><cmd>noh<cr>

map <C-h> <C-6>
map <leader>n *``
map # *NN

" " imap <C-Right> <Esc>ea
augroup autosave
    autocmd!
    autocmd TextChanged * silent! write
augroup END
