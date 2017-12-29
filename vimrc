" 
" Author: Guowei Chen
" -------------------

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

" terminal color
set t_Co=256
colorscheme molokai

" 高亮搜索目标
set hlsearch

" 将 tab 显示为 >-
ret list listchars=tab:>-

" 自动检测文件类型
filetype plugin on

" ----------- 设置常用快捷键 -------------- "
let mapleader = ";"

" 当前行向下移动
nnoremap <c-j> :m+<CR>==
inoremap <c-j> <Esc>:m+<CR>==gi
vnoremap <c-j> :m'>+<CR>gv=gv

" 当前行向上移动
nnoremap <c-k> :m-2<CR>==
inoremap <c-k> <Esc>:m+<CR>==gi
vnoremap <c-k> :m-2<CR>gv=gv

" ----------------------------------------- "

" 高亮当前光标所在行
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=NONE guifg=NONE

" 高亮当前光标所在列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE

" ------------- 插件管理 ------------------ "
call plug#begin('~/.vim/plugged')

" 自动补全插件 
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

" 状态栏插件
Plug 'vim-airline/vim-airline'
" 状态栏主题插件
Plug 'vim-airline/vim-airline-themes'

" 注释助手插件
Plug 'scrooloose/nerdcommenter'

" 增强 Tab键 插件
Plug 'ervandew/supertab'

" 强大的代码补全插件
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()
" ----------------------------------------- "

" 开启自动补全插件 deoplete
let g:deoplete#enable_at_startup = 1

" 开启插件 vim-airline
let g:airline#extensions#tabline#enabled = 1
" 设置状态栏的主题
let g:airline_theme = 'molokai'
