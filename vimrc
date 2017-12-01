set number

syntax enable
syntax on

" set the width of the tab
set tabstop=4

" Set the width of indent
set shiftwidth=4

set encoding=utf-8

" Match the bracket
set showmatch

" Show the ruler
set ruler

execute pathogen#infect()
filetype plugin indent on
autocmd FileType python setlocal expandtab smarttab softtabstop=4

set t_Co=256
colorscheme molokai

" Highlight the current line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=NONE guifg=NONE

set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_theme = 'molokai'
