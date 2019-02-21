" -------------------------
" @作者：陈国威
" @Author: Guowei Chen
" @E-mail: icgw@outlook.com
" -------------------------

" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

set number


" 按下一个 tab 之后，显示出来相当于几个空格，默认 8 个
set tabstop=2

" 每一级缩进的长度
set shiftwidth=2

" 在编辑模式下，按退格键时，退回缩进的长度。
set softtabstop=2

" 设置 expandtab 时，缩进用空格来表示；设置 noexpandtabd 则用制表符表示。
set expandtab

" 将制表符 (tab) 显示：▸-；回车符 (eol) 显示为：↩︎；行尾空白符 (trail) 显示为：-
set list listchars=tab:▸-,eol:↩︎,trail:-
" set list listchars=tab:▸-,eol:↩︎,trail:-,extends:»,precedes:«,space:␣

set encoding=utf-8

" Match the bracket
set showmatch

" show the cursor position all the time 
set ruler

" do not keep a backup file
set nobackup
set nowritebackup

" terminal color
set t_Co=256
colorscheme molokai

" 高亮搜索目标
set hlsearch

set statusline=%F%m%r%h%w%=\ [TYPE=%Y]\ %{\"[ENCODING=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [FORMAT=%{&ff}]\ [ASCII=%03.3b]\ [HEX=%02.2B]\ [POS=%04l,%04v][%p%%]\ [LINES=%L]

" set laststatus=0, 不显示状态行
" set laststatus=1, 仅当窗口多于一行时，显示状态行
" set laststatus=2, 总是显示状态行
set laststatus=2

" 自动检测文件类型
filetype plugin on

syntax enable
syntax on

" 将第81列提示换行
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" ----------- 设置常用快捷键 -------------- "

" 当前行向下移动
nnoremap <c-j> :m+<CR>==
inoremap <c-j> <Esc>:m+<CR>==gi
vnoremap <c-j> :m'>+<CR>gv=gv

" 当前行向上移动
nnoremap <c-k> :m-2<CR>==
inoremap <c-k> <Esc>:m+<CR>==gi
vnoremap <c-k> :m-2<CR>gv=gv

" 保存该文件
nnoremap <c-s> :w<CR>==
inoremap <c-s> <Esc>:w<CR>==gi
vnoremap <c-s> :w<CR>gv=gv

" 保存并退出文件
nnoremap <c-w> :wq<CR>==
inoremap <c-w> <Esc>:wq<CR>==gi
vnoremap <c-w> :wq<CR>gv=gv

" 撤销上一步操作 undo，对应 <ctrl - r> 恢复上一步操作 redo
nnoremap <c-z> u
inoremap <c-z> <Esc>u==gi
vnoremap <c-z> ugv=gv 

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()

let g:UltiSnipsExpandTrigger = "<c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

let g:UltiSnipsSnippetDirectories = ["icgw-snippets"]
" --------------------------------------------------- "

" 高亮当前光标所在行
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=NONE guifg=NONE

" 高亮当前光标所在列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE
