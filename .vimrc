"显示行号
set number

"显示高亮语法
syntax on

"在底部显示，当前处于命令模式还是插入模式
set showmode

"命令模式下，在底部显示，当前键入的指令。比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失
set showcmd

"使用 utf-8 编码
set encoding=utf-8

"启用256色
set t_Co=256

"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent

"按下 Tab 键时，Vim 显示的空格数
set tabstop=4

"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4

"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab

"光标所在的当前行高亮
set cursorline

"在状态栏显示光标的当前位置（位于哪一行哪一列）
set  ruler

"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch

"搜索时，高亮显示匹配结果
set hlsearch

"搜索时忽略大小写
set ignorecase
