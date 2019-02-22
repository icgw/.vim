" ------------------------------------------------------------------------------
"  陈国威定制的 Vim 配置文件
"  Vim configure file written by Guowei Chen
"
" @作者：陈国威
" @Author: Guowei Chen
" @E-mail: icgw@outlook.com
" ------------------------------------------------------------------------------

" 只是用 vim 设置，不兼容 vi
set nocompatible

" 显示行号
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

" 设置编码为 UTF-8
set encoding=utf-8

" 匹配当前对应括号
set showmatch

" 状态栏右下方显示标尺（光标位置信息）
" set ruler

" 不产生以 *.ext~ 扩展名的备份文件
set nobackup
set nowritebackup
" 不产生交换文件
set noswapfile

" 设置色彩数量
set t_Co=256
" 设置 vim 的主题
colorscheme molokai

" 高亮搜索目标
set hlsearch

set statusline=%F%m%r%h%w%=\ [TYPE=%Y]\ %{\"[ENCODING=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [FORMAT=%{&ff}]\ [ASCII=%03.3b]\ [HEX=%02.2B]\ [POS=%04l,%04v][%p%%]\ [LINES=%L]

" set laststatus=0, 不显示状态行
" set laststatus=1, 仅当窗口多于一行时，显示状态行
" set laststatus=2, 总是显示状态行
set laststatus=2

" 状态栏右下方显示键盘输入
set showcmd

" 设置语法高亮
if !exists('g:syntax_on')
  syntax enable
endif

" 将第81列提示换行
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" ------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

" 自动检测文件类型、加载 indent.vim、加载 ftplugin.vim
filetype plugin indent on

let g:UltiSnipsExpandTrigger       = "<C-e>"
let g:UltiSnipsJumpForwardTrigger  = "<C-h>"
let g:UltiSnipsJumpBackwardTrigger = "<C-l>"

let g:UltiSnipsSnippetDirectories  = [ "icgw-snippets" ]
" ------------------------------------------------------------------------------

" 高亮当前光标所在行
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=NONE guifg=NONE

" 高亮当前光标所在列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE
