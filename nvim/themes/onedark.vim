" ONEDARK.VIM - Theme onedark configuration.
" Author: AlphaLawless
" Repository: 

colorscheme onedark

hi Comment cterm=italic

" ONEDARK.VIM OPTIONS//

let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:onedark_hide_endofbuffer=1

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

set t_Co=256
highlight ColorColumn ctermbg=200 guibg=#282c34
if exists('+colorcolumn')
      set colorcolumn=140
else
      au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80va.\+', -1)
endif
