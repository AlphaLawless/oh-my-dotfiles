" Author: AlphaLawless
" Repository:

let g:ctrlp_custom_ignore = 'v[ /] .(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1
