" DRACULA.VIM - Theme dracula configuration.
" Author: AlphaLawless
" Repository:

colorscheme dracula

hi Comment cterm=italic

set t_Co=256

highlight ColorColumn ctermbg=DarkMagenta guibg=#302442
if exists('+colorcolumn')
  set colorcolumn=140
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80va.\+', -1)
endif
