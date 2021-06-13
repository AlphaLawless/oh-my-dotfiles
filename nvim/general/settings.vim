" SETTINGS.VIM - Vim general configuration file.
" Author: AlphaLawless
" Repository:

"SETTINGS FOR NVIM//

" INDETION OPTIONS//

set autoindent " New lines inherit the indentation of previous lines.
set smartindent " Reacts to the syntax/style of the code you are editing.
set expandtab " Convert tabs to spaces.
set shiftround " When shifting lines, round the indentation to the nearest multiple of shiftwidth.
set smarttab " Insert tabstop number of spaces when the tab key is pressed.
set shiftwidth=2 " When shifting, indent using two spaces.
set tabstop=2 " Insert using 2 spaces.
set numberwidth=2 " Width vertical number in 2.
set iskeyword+=- " treat dash separated words as a word text object.

filetype plugin indent on " Enable indentation rules that are file-type specific.

" SEARCH OPTIONS//

set hlsearch " Enable search highlighting.
set ignorecase " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" PERFOMANCE OPTIONS//

set complete-=i " Limite the files searched for auto-completes.
set lazyredraw " Don't udpate scren during macro and script execution.

" TEXT RENDERING OPTIONS//

set display+=lastline " Always try to show a paragraph's last line.
set encoding=utf-8 " Use an enconding that support unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to left and right of the cursor.
set nowrap " Desable line wrapping.
set conceallevel=0 " So that I can see `` in markdown files
set nocompatible " Disable compatible for plugin compatible.

syntax on " Enable syntax into plugins.
syntax enable " Enable syntax highlighting.

" USER INTERFACE OPTIONS//

set ruler " Always show cursor position.
set cursorline " Highlight the line currently under cursor.
set mouse=a " Enable mouse for scrolling and resizing.
set number " Show line numbers on the slidebar.
set relativenumber " Show relative line numbers.
set wildmenu " Display command line's tab complete options as a menu.
set showmatch " Can reduce the need for %, the cursor will briefly jump to the matching brace when you insert one.
set clipboard=unnamedplus " Enable copies of files outside of vim.
set noshowmode " No show the mode in line bottom.

" CODE FOLDING OPTIONS//

" set foldmethod=indent " Fold based on indention levels.
" set foldnestmax=99 " Only ninety-nine fold up to ninety-nine nested levels.

" MISCELLANEOUS OPTIONS//

set history=1000 " Increase the undo limit.
set nocompatible " 
set t_Co=256 " Support 256 colors.
