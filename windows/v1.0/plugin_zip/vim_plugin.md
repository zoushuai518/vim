
常用的vim经典插件:


NERDTree.vim
目录树插件

neocomplcache
vim 自动补全插件

taglist  || ctags
跳转

MiniBufExplorer
多文件编辑

comments.vim
注释插件

DoxygenToolkit.vim
添加文件 / 函数 title 插件

calendar.vim
日历插件

task.vim
任务插件


align.vim
一个对齐的插件,用来排版,面对一堆乱七八糟的代码时,用来对齐代码,功能强大,不过用到的机会不多
http://www.vim.org/scripts/script.php?script_id=521
给vim增加MRU功能,也就是保留最近打开的文件记录,:MRU打开,q退出,很方便,有过一个支持菜单的类似的插件
不过对于我这样的不用菜单的用户,还是这个命令行的好用一点,因为经常使用,所以我映射到了F2

NERD_commenter.vim
功能强大的代码注释工具,用来注释或者取消注释,支持很多语言,可以对文本块操作,写代码离不了,呵呵最常用到的快捷键是\c

a.vim 
在.c/.h之间切换,写代码必备

bufexplorer.vim 
列出当前打开的buffer,可以很容易的切换到和删除选定的buffer,必备插件之一

c.vim 
c/c++ support,让你用编写c/c++程序时如虎添翼,有很多贴心的功能,每个功能都有快捷键
,不过一部分和NERD_comments冲突
如果经常编写一些单文件的c程序,但是不想写makefile,用这个,他帮你完成,F9编译并链接,
ctrl-F9运行

calendar.vim 
日历插件,有了它,用vim来写日记很方便

csExplorer.vim 
color theme浏览插件,列出所有的vim color theme到一个列表中,选中后按回车即可应用相
应的color theme,试验color theme时再也不用一次次输入:colo theme_name了,从上百个
color theme中选择自己喜欢的theme时有用

cscope_maps.vim 
cscope的vim插件,提供快捷键操纵cscope,好东东,如果你在用cscope的话

favex.vim 
FavEx : Favorite file and directory explorer ,可以添加目录和文件到收藏夹，可以把
经常编辑的文件添加到收藏夹来，在文件打开以后，\ff新增文件到收藏夹，\fd新增目录到
收藏夹

lookupfile.vim 
五星级推荐的好插件!我觉得它是vim上最伟大的插件之一,提供多种方式查找文件,让你在复
杂的目?树中也能轻松自如找到你要的文件

matchit.vim 
扩展了vim的%功能,让%可以匹配的,不再仅仅是括号,支持多种语言.必备插件之一

parenquote.vim 
给选中的文字加上引号,支持( { [ < ' " `,选中后,\加上你想要添加的符号,比如选中abc
后,\(,得到(abc)

snippetEmu.vim 
扩展了vim的abbr缩写功能,支持占位符,支持变量替换,强烈推荐

taglist.vim 
vim的代码浏览器,生成函数列表,支持跳转,可以根据光标λ置查询到当前的函数名,使用
vim的程序员必备!个人认为是最伟大的插件之一

utl.vim 
给vim增加url的识别功能,但是功能远不只是支持url,还有更多,详情见utl的帮助

vcscommand.vim 
给vim整合了cvs/subversion功能,不用离开vim环境也能执行常用的cvs/subversion操作了

viki.vim 
vim的wiki,没怎么用过,据说很好用,详情可以看滇狐的主页
http://edyfox.codecarver.org/html/viki.html

vis.vim 
可以对选中的文本块执行ex操作,尤其是visual block模式下,vim自己是不支持的.选中后,
:B 加上ex命令

visincr.vim 
给vim增加生成递增或者递减数列的功能,支持十进制,十六进制,日期,星期等,功能强大灵活

winmanager.vim 
给vim增加IDE的功能,提供目录浏览和buffer浏览功能,因为显示器太小,感觉太占空间,所以
单独使用bufexplorer,而且现在vim7的netrw功能也够强大,所以感觉比较鸡肋,而且貌似很
久没有更新,所以基本不用

yankring.vim 
类似emacs的king ring,给vim的yank也增加缓冲,vim本身只缓冲删除的字符串,不缓冲yank
的内容

