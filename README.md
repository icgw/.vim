快捷键一览
----------
> `C` 表示 `Ctrl`

`C-j` 将当前行的内容往下移动

`C-k` 将当前行的内容往上移动

`C-f` 向前翻页

`C-b` 往回翻页


插件
----
airline
:美化状态栏

deoplete
: vim 的版本 8+，需要 python3 支持；需要 neovim-python 


从vim迁移到neovim
-----------------
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vim/vimrc $XDG_CONFIG_HOME/nvim/init.vim
