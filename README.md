目录
====
- [移动 (Normal) 正常模式](#%E7%A7%BB%E5%8A%A8-normal-%E6%AD%A3%E5%B8%B8%E6%A8%A1%E5%BC%8F)
  - [定位光标到下一个位置（简称 `motion`）](#%E5%AE%9A%E4%BD%8D%E5%85%89%E6%A0%87%E5%88%B0%E4%B8%8B%E4%B8%80%E4%B8%AA%E4%BD%8D%E7%BD%AE%E7%AE%80%E7%A7%B0-motion)
  - [撤销、恢复（键入）、重复（命令）](#%E6%92%A4%E9%94%80%E6%81%A2%E5%A4%8D%E9%94%AE%E5%85%A5%E9%87%8D%E5%A4%8D%E5%91%BD%E4%BB%A4)
  - [切换光标到对应括号位置](#%E5%88%87%E6%8D%A2%E5%85%89%E6%A0%87%E5%88%B0%E5%AF%B9%E5%BA%94%E6%8B%AC%E5%8F%B7%E4%BD%8D%E7%BD%AE)
- [输入 (Insert) 插入模式](#%E8%BE%93%E5%85%A5-insert-%E6%8F%92%E5%85%A5%E6%A8%A1%E5%BC%8F)
- [选择 (Visual) 选择模式](#%E9%80%89%E6%8B%A9-visual-%E9%80%89%E6%8B%A9%E6%A8%A1%E5%BC%8F)
- [选择模式下的常用操作](#%E9%80%89%E6%8B%A9%E6%A8%A1%E5%BC%8F%E4%B8%8B%E7%9A%84%E5%B8%B8%E7%94%A8%E6%93%8D%E4%BD%9C)
- [插件功能](#%E6%8F%92%E4%BB%B6%E5%8A%9F%E8%83%BD)
  - [批量注释、取消注释](#%E6%89%B9%E9%87%8F%E6%B3%A8%E9%87%8A%E5%8F%96%E6%B6%88%E6%B3%A8%E9%87%8A)
  - [多处同时编辑](#%E5%A4%9A%E5%A4%84%E5%90%8C%E6%97%B6%E7%BC%96%E8%BE%91)
  - [括号操作](#%E6%8B%AC%E5%8F%B7%E6%93%8D%E4%BD%9C)

移动 (Normal) 正常模式
======================
## 定位光标到下一个位置（简称 `motion`）

|        `motion`        |                                                          Example                                                          |
| :--------------------: | :-----------------------------------------------------------------------------------------------------------------------: |
| `f`*x*, `F`*x*, `t`*x* |        <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/fxFxtx.gif" width="50%" alt="fxFxtx"/>        |
|        `w`, `b`        |            <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/wb.gif" width="50%" alt="wb"/>            |
|     `0`, `$`, `^`      |     <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/0%24%5E%24.gif" width="50%" alt="0\$\^\$"/>      |
|        `)`, `(`        | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/next_sentence.gif" width="50%" alt="next-sentence"/> |

## 撤销、恢复（键入）、重复（命令）
- `u` 撤销当前键入操作；
- `Crtl-r` 恢复之前撤销的键入操作；
- `.` 再次执行之前输入的命令。

## 切换光标到对应括号位置
- `%` 光标在当前括号字符，键入后光标切换到对应的括号字符位置。

输入 (Insert) 插入模式
======================
- `i` 当前**光标头**插入；`I` 当前**行首**插入。
- `a` 当前**光标尾**插入；`A` 当前**行尾**插入。
- `o` 当前**行下方**插入新行；`O` 当前**行上方**插入新行。
- `c`\<*motion*\> 删除 \<*motion*\> 命令跨过的字符，并且进入插入模式。

选择 (Visual) 选择模式
======================
- `v` 选择光标**从首到尾**的内容；`V` 选择光标**当前行到下一处行**的内容。
- `Crtl-v` 按块方式选择内容，光标首尾为块的对角点。

选择模式下的常用操作
====================
- `d` 剪切选择的内容，拷贝到剪贴板；
- `y` 拷贝选择的内容到剪贴板。

|   Visual   |                                                    Example                                                     |
| :--------: | :------------------------------------------------------------------------------------------------------------: |
| `c` or `s` | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/visual_cors.gif" width="50%" alt="cors"/> |
|  `>`, `<`  |   <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/vindent.gif" width="50%" alt="\>\<"/>   |

插件功能
========
## 批量注释、取消注释
|  NERDCommenter   |                                               Example                                               |
| :--------------: | :-------------------------------------------------------------------------------------------------: |
| \<*count*\>`\cs` | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/cs.gif" width="50%" alt="cs"/> |
| \<*count*\>`\cu` | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/cu.gif" width="50%" alt="cu"/> |

## 多处同时编辑
|   vim-multiple-cursors   |                                                Example                                                |
| :----------------------: | :---------------------------------------------------------------------------------------------------: |
|  选择内容并键入`Crtl-n`  | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/c-n.gif" width="50%" alt="c-n"/> |

## 括号操作
|       vim-surround       |                                                      Example                                                      |
| :----------------------: | :---------------------------------------------------------------------------------------------------------------: |
| `cs`\<*init*\>\<*subs*\> | <img src="https://raw.githubusercontent.com/icgw/.vim/master/.assets/csbracket.gif" width="50%" alt="csbracket"/> |
