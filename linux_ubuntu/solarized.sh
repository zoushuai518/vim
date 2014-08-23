#给solarized.sh添加执行权限：chmod +x solarized.sh 。
#
#最后，在终端下运行./solarized.sh dark 或./solarized.sh light。
#
#这样，终端的配色方案与vim中的配色一致了。
#
# 可通过 编辑->配置文件首选项->颜色->使用系统主题的颜色	|来回复ubuntu的默认终端颜色


# VIM默认高亮配色与UBUNTU主题颜色不太相配,有时都看不清. 
# 其实不用另外再找颜色主题,只要与UBUNTU终端的配置改一下就行了 
# 编辑 -> 配置文件首选项 -> 颜色 -> 去掉使用系统主题中的颜色并选择内置方案为黑底灰字

#
#!/bin/sh
#
# Shell script that configures gnome-terminal to use solarized theme
# colors. Written for Ubuntu 11.10, untested on anything else.
#
# Solarized theme: http://ethanschoonover.com/solarized
# 
# Adapted from these sources:
# https://gist.github.com/1280177
# http://xorcode.com/guides/solarized-vim-eclipse-ubuntu/

case "$1" in 
	"dark")
		PALETTE="#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
		BG_COLOR="#00002B2B3636"
		FG_COLOR="#65657B7B8383"
		;;
	"light")
		PALETTE="#EEEEE8E8D5D5:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#070736364242:#FDFDF6F6E3E3:#CBCB4B4B1616:#9393A1A1A1A1:#838394949696:#65657B7B8383:#6C6C7171C4C4:#58586E6E7575:#00002B2B3636"
		BG_COLOR="#FDFDF6F6E3E3"
		FG_COLOR="#838394949696"
		;;
	*)
		echo "Usage: solarize [light | dark]"
		exit
		;;
esac

gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "$PALETTE"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "$BG_COLOR"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "$FG_COLOR"
