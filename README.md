# Vim 使用与配置 #

## 快捷键一览 ##

* `C - j` 将当前行的内容往下移动
* `C - k` 将当前行的内容往上移动
* `C - f` 向前翻页
* `C - b` 往回翻页
* `\ - cc` 注释
* `\ - cu` 取消注释
* `\ - c<space>` 在注释、取消注释切换
* `C - s` 保存文件
* `C - w`, `ZZ` 保存并退出文件
* `%` 跳转至相匹配的括号
* `q:` 显示历史命令
* `\ - ll' 编译 tex 文件
* '\ - lv' 预览当前文件名的 pdf 文件。

> `C` 表示 `Ctrl`

## 插件 ##

* [`airline`](https://github.com/vim-airline/vim-airline) 美化状态栏
* [`deoplete`](https://github.com/Shougo/deoplete.nvim)
	- vim 的版本 8+，需要 python3 支持；需要 neovim-python 
* [`NERDComment`](https://github.com/scrooloose/nerdcommenter) 注释
* [`supertab`](https://github.com/ervandew/supertab)
	- 增强 tab 键的功能，配合自动补齐插件使用
* [`ultisnips`](https://github.com/SirVer/ultisnips)
	- 强大的代码补全插件

## 从vim迁移到neovim ##

```shell
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vim/vimrc $XDG_CONFIG_HOME/nvim/init.vim
```
