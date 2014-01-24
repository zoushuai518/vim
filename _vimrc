"windows平台下,vim配置文件,仅供参考
"配置中 inoremap 开头的表示后面的设置针对的是插入模式下的
"如 inoremap <a-c>w <ESC>ciw 表示的是在插入模式下按下 alt + c 后 按w
"删除光标下的单词
"<a-c>w 表示设置的按键 空格后面跟的表示要执行的操作 
" nnoremap  表示的是 正常模式下的设置
" vmap  表示的是 选择状态下的设置

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin



"在状态栏显示目前所执行的指令，未完成的指令片段也会显示出来
set showcmd

"显示行号
set number

"关闭备份
set nobackup

"关闭 swap 文件
set noswapfile

"设置匹配模式
set showmatch

"显示光标的状态行
set guioptions-=T

set bsdir=buffer 


"开启新行时自动智能缩进
set smartindent
set shiftwidth=4


"禁用vi兼容模式
set nocompatible

"让配置文件自动加载
autocmd! bufwritepost _vimrc source %



"1）设置（软）制表符宽度为4
set tabstop=4
set softtabstop=4
"2）设置缩进的空格数为4
set shiftwidth=4
"3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置：
set autoindent
"4）设置使用 C/C++ 语言的自动缩进方式：
set cindent



"配色方案
colorscheme desert

" 语法高亮
syntax enable
syntax on



"默认区分大小写
set noignorecase

"设置冒号命令和搜索命令历史列表的长度
set history =1000

"设定在任何模式下鼠标都可用
"set mouse=

"设置命令行的高度为1
set cmdheight=1

"设置状态栏标尺
set ruler
"高亮显示当前行
set cursorline
"高亮显示当前列
set cursorcolumn
" cursor
"set cursorline
"hi CursorLine ctermbg=lightgray cterm=NONE
"set cursorcolumn
"hi CursorColumn ctermbg=lightgray

"设定退格键和delete键
set backspace=indent,eol,start

"输入搜索内容时就显示搜索结果
set incsearch
set nohls

"搜索结果高亮显示
set hlsearch

"搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase


"打开新窗口时时为上下35行宽,左右118个字符宽的窗口
"set lines=35 
"set columns=118


"php缩进
let PHP_autoformatcomment=1


" vim 代码折叠设置 s
set fdm=indent

autocmd! bufwritepost _vimrc source %


set fileencoding=utf-8  

set fileencodings=utf-8,gbk,cp936,gb18030,utf-16,big5 


autocmd FileType javascript set dictionary=./dict/javascript.dict
autocmd FileType php set dictionary=./dict/php_funclist.dict
autocmd FileType css set dictionary=./dict/css2.1.dict


nmap <F10> :NERDTreeToggle<CR>

" NeoComplCache
let g:neocomplcache_enable_at_startup = 1 


" taglist s
"
"map <silent> <leader>tl :TlistToogle<cr> 
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Use_Right_Window = 1 " taglist 窗口出现在右侧

"配置taglist映射快捷键，使用“,tl”键就可以打开/关闭taglist窗口
map <silent> <leader>tl :TlistToogle<cr>

" taglist e


" ctags s

"set tags=C:\xampp\htdocs\cms-web\tags;
set tags=D:\wamp\www\cms\cms-web-test\tags;
set tags=D:\wamp\www\cms\cms-admin\tags;
set autochdir


" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1


"窗口最大化,只适合windows
autocmd GUIEnter * simalt ~x

"命令行补全
set wildmenu


"多文件编辑
"MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapCTabSwitchWindows=1
let g:miniBufExplorerMoreThanOne=1


"snipMate 自动补全
"snipMate windows下功能失效原因：
"snipMate插件解析源snippets路径是在windows下取出来的路径是用\，而在类Unix系统中，目录是用/，导致snipMate插件在解析获取snippets时路径错误，不能识别
"
"解决办法：
"在你的_vimrc中添加如下行：
let g:snippets_dir = "C:/Users/ZS-THINKPAD/Desktop/vim/vimfiles/snippets"
"注：上述路径是自己的安装目录，根据自己情况进行修改。
"zs注: snipMate插件一般放在 ./vim/vimfiles目录下;snippets补全可以自定义


"Toggle Menu and Toolbar; 隐藏工具栏
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

" comments.vim 注释插件
" 修改 Ctrl+c[添加注释]->Alt+c ; Ctrl+v[取消注释]->Alt+v ; 

"" key-mappings for comment line in normal 

"" key-mappings for comment line in normal mode
noremap  <silent> <A-c> :call CommentLine()<CR>
"" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> <A-c> :call RangeCommentLine()<CR>

"" key-mappings for un-comment line in normal mode
noremap  <silent> <A-v> :call UnCommentLine()<CR>
"" key-mappings for range un-comment lines in visual <Shift-V> mode
vnoremap <silent> <A-v> :call RangeUnCommentLine()<CR>


"For example, my .vimrc contains:
"DoxygenToolkit.vim
"doxygen toolkit 
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Mathias Lorente"
let g:DoxygenToolkit_licenseTag="My own license"
let g:DoxygenToolkit_authorName="drunkedcat, whitelilis@gmail.com"
let s:licenseTag = "Copyright(C)"
let s:licenseTag = s:licenseTag . "For free"
let s:licenseTag = s:licenseTag . "All right reserved"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
" use doxygen 这个工具
"光标在函数上，用 :Dox 自动生成函数的说明
"光标在文件头，用 :DoxAthor 自动生成文件说明

" =====
"let g:DoxygenToolkit_authorName="xxx"
"F1为添加文件头快捷键
"au FileType cpp map <F1> :DoxAuthor<CR>
"au FileType python map <F1> :DoxAuthor<CR>
"F2为添加函数注释
"au FileType cpp map <F2> :Dox<CR>
"au FileType python map <F2> :Dox<CR>


"Calendar.vim
"
"使用方法，vim普通模式下，输入 :Calendar 即可在左侧打开一个小窗口，:q 退出
"回车键
"let g:calendar_diary = "D:/Calendar"
let g:calendar_diary = "C:/Users/ZS-THINKPAD/Desktop/Calendar"
let g:calendar_monday = 1           " 以星期一为开始
let g:calendar_focus_today = 1      " 光标在当天的日期上
"let g:calendar_mark = "left-fit" "可以让*和数字可靠近
"let g:calendar_mark = "right" "上面设置后在昨天写日志，修改成right正常
"let g:calendar_mruler = "一月,二月,三月,四月,五月,六月,七月,八月,九月,十月,十一月,十二月"     " 中文，可自行修改
"let g:calendar_wruler = "日 一 二 三 四 五 六"
"let g:calendar_navi_label = "往前,今日,往后"
"map <F8> :Calendar<cr>              " 快捷键，默认 <leader>cal,水平方向：<leader>caL




