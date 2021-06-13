" Author: AlphaLawless
" Repository:

" For instance if you want to display the hidden files by default you can write:
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

let g:ranger_map_keys=0
nnoremap <leader><Tab> :Ranger<cr>
