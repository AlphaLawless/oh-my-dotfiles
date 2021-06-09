" KEYBINDSNVIM.VIM - Shortcut keys for vim.
" Author: AlphaLawless
" Repository: 

" Open a terminal in a horizontal split.

nnoremap <C-t> :5sp<CR>:terminal<CR>GA

" NVIM SAVE AND QUIT OPTIONS//

nnoremap <C-s> :wq<cr>
nnoremap <C-q>E :q!<cr>
nnoremap <C-q>q :q<cr>
nnoremap <C-a>a :qa<cr>
nnoremap <C-a>A :qa!<cr>

" NAVEGATIONS BETWEEN BUFFERS//

" Alt + -> Buffer to right
nnoremap <M-j> :bn<cr>
" Alt + <- Buffer to Left
nnoremap <M-k> :bp<cr>
" Ctrl + X Close the buffer current
nnoremap <C-x> :bp \| bd #<cr>
