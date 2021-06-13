" KEYBINDSNVIM.VIM - Shortcut keys for vim.
" Author: AlphaLawless
" Repository: 

" Better nav for omnicomplete.

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Open a terminal in a horizontal split.

nnoremap <C-t> :5sp<CR>:terminal<CR>GA

" Save options and exit options.

nnoremap <C-s> :wq<cr>
nnoremap <C-q>E :q!<cr>
nnoremap <C-q>q :q<cr>
nnoremap <C-a>a :qa<cr>
nnoremap <C-a>A :qa!<cr>

" Tab to right Buffer
nnoremap <Tab> :bn<cr>
" Shift + Tab to left Buffer
nnoremap <S-Tab> :bp<cr>
" Ctrl + X Close the buffer current
nnoremap <C-x> :bp \| bd #<cr>

" Bracey Options.

nnoremap <S-s> :Bracey<cr>
nnoremap <S-S> :BraceyStop<cr>
nnoremap <S-r> :BraceyReload<cr>

" Move a visual block to the right or left.

vnoremap < <gv
vnoremap > >gv

" I hate escape more than anything else

inoremap jk <Esc>
inoremap kj <Esc>

" Move a line up or down [ Alt + direction ].

nnoremap <M-k> :m .-2<CR>==
nnoremap <M-j> :m .+1<CR>==
vnoremap <M-k> :m '<-2<CR>gv=gv
vnoremap <M-j> :m '>+1<CR>gv=gv

" Set the splits to below and right.

set splitbelow
set splitright

" Create a new split in a given direction [ Alt + directioni ].
nnoremap <M-l> <C-w>v
nnoremap <M-h> <C-w>s

" Chance the split focus in a given direction [ Ctrl + direction ].
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows

nnoremap <silent> <C-Left>:vertical resize +3<CR>
nnoremap <silent> <C-Right>:vertical resize -3<CR>
nnoremap <silent> <C-Up>:resize +3<CR>
nnoremap <silent> <C-Down>:resize -3<CR>
