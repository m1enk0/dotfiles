let g:mapleader = "\<Space>"
let maplocalleader = "\<Space>"

highlight CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLinenr cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=NONE guifg=NONE

augroup autosave
    autocmd!
    autocmd TextChanged * silent! write
augroup END

set number relativenumber
set cursorline
set undofile
set gdefault
set incsearch
set hlsearch
set noswapfile
set scrolloff=999
set ignorecase
set smartcase
set nowrap
set timeoutlen=10000
set sidescrolloff=5

set splitright splitbelow

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

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
" map <A-q> <cmd>qa<cr>
map <leader>eq <cmd>bd<cr>

" keeping cursor cursor on the same position after exit from insert mode
imap <silent> <Esc> <Esc>`^

vnoremap <leader>rr ""y:%s/<C-r>"/
vnoremap <leader>rc :s/<C-r>"/

" leader as modifier
nnoremap <leader> <Nop>
vnoremap <leader> <Nop>

"switching places of two arguments in parentheses
noremap @s F,w""d])%""pl""dt,w""P

vmap u <Nop>
vmap U <Nop>

map R $
map _ ^
map ) %
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j
nnoremap <leader>p o<Esc>"*p
nnoremap <leader>P O<Esc>"*p
nmap <silent> <leader><Esc> <cmd>noh<cr><cmd>echon ''<cr>
nmap <silent> <A-i> <cmd>noh<cr><cmd>echon ''<cr>
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
cmap <silent> <A-i> <cr><cmd>noh<cr>

map <C-h> <C-6>
map <silent> <leader>n *``
map # *NN
"snake case to camel case 
map <silent> <leader>gc guiwviw:s/\%V_\([a-zA-Z]\)/\u\1<cr><cmd>noh<cr>
"camel case to snake case 
map <silent> <leader>gs viw:s/\%V\([a-z]\)\([A-Z]\)/\1_\l\2<cr><cmd>noh<cr>

map gy `[v`]
