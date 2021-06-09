" INIT.VIM - Initial vim configuration.
" Author: AlphaLawless
" Repository:

" SETTINGS LEADER KEYS//
let g:madleader="\<space>"

" SPECIFY A DIRECTORY FOR PLUGINS//
call plug#begin(stdpath('config') . '/autoload/plugged')
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}  " Vim support elixir
  Plug 'neoclide/coc.nvim', {'branch': 'release'}                       " Coc Nvim
  Plug 'sheerun/vim-polyglot'                                           " Polyglot Vim
  Plug 'preservim/nerdcommenter'                                        " nerdcommenter
  Plug 'ryanoasis/vim-devicons'                                         " Devicons
  Plug 'mhinz/vim-startify'                                             " Start Screen
  Plug 'Yggdroot/indentLine'                                            " IndentLine
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                        " NerdTree Highlight
  Plug 'preservim/nerdtree'                                             " NerdTree
  Plug 'vim-airline/vim-airline'                                        " Vim airline
  Plug 'vim-airline/vim-airline-themes'                                 " Vim airline theme
  Plug 'easymotion/vim-easymotion'                                      " Easy Navegation
  Plug 'Xuyuanp/nerdtree-git-plugin'                                    " NERDTree Git Highlight
  Plug 'joshdick/onedark.vim'                                           " Onedark theme
  Plug 'dracula/vim', { 'as': 'dracula' }                               " Dracula theme
  " Plug 'itchyny/lightline.vim'                                          " Lightline performance
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }                    " Go Support
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }  " Styled Components
  Plug 'turbio/bracey.vim'                                              " Bracey Server
  Plug 'mhinz/vim-signify'                                              " Modification Signs
  Plug 'tpope/vim-fugitive'                                             " Git Integration
  Plug 'tpope/vim-rhubarb'                                              " GitHub Integration Browser
  Plug 'junegunn/gv.vim'                                                " Git Integration Highlight
  Plug 'alvan/vim-closetag'                                             " Auto Tag Complete
  Plug 'jackguo380/vim-lsp-cxx-highlight'                               " Highlight vimslp and C/C++
  Plug 'jiangmiao/auto-pairs'                                           " Auto-pairs
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                   " Fuzzy install
  Plug 'junegunn/fzf.vim'                                               " Fuzzy vim
  Plug 'airblade/vim-rooter'                                            " Rooter
  Plug 'ap/vim-css-color'                                               " CSS color vim
  Plug 'ctrlpvim/ctrlp.vim'                                             " Fuzzy find files
  Plug 'rbgrouleff/bclose.vim'                                          " Dependency for ranger vim
  Plug 'francoiscabrol/ranger.vim'                                      " Ranger vim

call plug#end()

" SOURCE PLUGINS//

source $HOME/.config/nvim/plugins-configs/airline.vim
source $HOME/.config/nvim/plugins-configs/bracey.vim
source $HOME/.config/nvim/plugins-configs/coc.vim  
source $HOME/.config/nvim/plugins-configs/emmet.vim
source $HOME/.config/nvim/plugins-configs/startify.vim
source $HOME/.config/nvim/plugins-configs/nerd-tree.vim
source $HOME/.config/nvim/plugins-configs/ctrlp.vim
source $HOME/.config/nvim/plugins-configs/indentline.vim
source $HOME/.config/nvim/plugins-configs/commenter.vim
source $HOME/.config/nvim/plugins-configs/signify.vim
source $HOME/.config/nvim/plugins-configs/autotag.vim
" source $HOME/.config/nvim/plugins-configs/lightline.vim
source $HOME/.config/nvim/plugins-configs/fzf.vim
source $HOME/.config/nvim/plugins-configs/ranger.vim

" SOURCE THEMES//

"source $HOME/.config/nvim/themes/dracula.vim
source $HOME/.config/nvim/themes/onedark.vim

" SOURCE GENERAL//

source $HOME/.config/nvim/general/keybindsnvim.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/languages.vim

" INSTALL MISSING PLUGINS ON STARTUP//

autocmd VimEnter *
      \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|  PlugInstall --sync | q
      \|endif
