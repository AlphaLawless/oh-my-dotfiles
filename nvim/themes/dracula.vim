" DRACULA.VIM - Theme dracula configuration.
" Author: AlphaLawless
" Repository:

" airline theme
let g:airline_theme = 'dracula'

colorscheme dracula

hi Comment cterm=italic

highlight ColorColumn ctermbg=DarkMagenta guibg=#302442
if exists('+colorcolumn')
  set colorcolumn=140
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80va.\+', -1)
endif

" No nvim background for terminal.

" if (has("termguicolors"))
    " set termguicolors
    " hi! Normal ctermbg=NONE guibg=NONE
    " set notermguicolors
    " set termguicolors
" endif
