" 
" Author: Guowei Chen
"

" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

set number

syntax enable
syntax on

" I like 4 stops
set tabstop=4

" I like 4 spaces for indenting
set shiftwidth=4

set encoding=utf-8

" Match the bracket
set showmatch

" show the cursor position all the time 
set ruler

" do not keep a backup file
set nobackup
set nowritebackup

execute pathogen#infect()
filetype plugin indent on
autocmd FileType python setlocal expandtab smarttab softtabstop=4

" terminal color
set t_Co=256
colorscheme molokai

" ----------- 设置常用快捷键 -------------- "

" 当前行向下移动
noremap <c-j> ddp

" 当前行向上移动
noremap <c-k> :call feedkeys(line('.') == 1? '' : 'ddkP')<CR>


" ----------------------------------------- "

" Highlight the current line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=NONE guifg=NONE

set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_theme = 'molokai'
