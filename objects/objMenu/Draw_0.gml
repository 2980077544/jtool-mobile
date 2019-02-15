/// @desc 绘制游戏总菜单
var xs = x;		// 起始的按钮X
var iys = 56;	// 起始的头按钮Y
var ys = 120;	// 起始的按钮Y
var xx = xs;	// 当前的X
var yy = iys;	// 当前的Y
var xb = 48;	// 头按钮的横向间隔
var yb = 48;	// 按钮的上下间隔
var iconW = 48;	// 头按钮的宽度
var iconH = 48;	// 头按钮的高度
var bw = 192;	// 按钮的宽度
var bh = 48;	// 按钮的高度
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(x, y, "Menu");
#region 头按钮
var i = 0;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuFile))
{	
	// 文件操作
	page = PAGE_FILE;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuPlayer))
{
	// 玩家设置
	page = PAGE_PLAYER;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuMap))
{
	// 地图选项
	page = PAGE_MAP;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuAbout))
{
	// 地图选项
	page = PAGE_ABOUT;
	ef.x = xx + xb * i;
}
#endregion
#region 文件
if (page == PAGE_FILE)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
	if (scrMenuButton(xx, yy, bw, bh, sprMenuEdit, "Map Name"))
	{
		// 地图改名
		global.mapName = get_string("Map Name", global.mapName);
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuOpen, "Open JMap"))
	{
		// 打开地图
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuSave, "Save JMap"))
	{
		// 保存地图
	}

}
#endregion 
#region 玩家

#endregion
#region 地图
#endregion
#region 关于
if (page == PAGE_ABOUT)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fBold, fa_left, fa_top);
	xx = x;
	draw_text(xx, yy, "Jtool Mobile \n            v0.15\nBy Cube");
}
#endregion