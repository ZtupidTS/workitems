#Region ;**** 参数创建于 ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=..\获取回放列表总数(每天总数相加)(91IE).exe|-1
#AutoIt3Wrapper_outfile=..\获取回放列表总数(每天总数相加)(91IE).exe
#EndRegion ;**** 参数创建于 ACNWrapper_GUI ****
#Include <GuiListView.au3>
Local $xiaozhan , $count  
 $title = WinGetTitle("[CLASS:IEFrame]", "")
	;MsgBox(4160, "Information" ,$title)
	WinActivate($title,"Playback")  ;激活指定的窗口(设置焦点到该窗口,使其成为活动窗口)
	$xiaozhan = ControlGetHandle ( $title, "", "SysListView321")  ;获取指定控件的内部句柄.
	$count = _GUICtrlListView_GetItemCount($xiaozhan) ;获取列表视图控件的项目数
	MsgBox(1, "获取回放列表总数" ,"获取回放列表当天总数:  " & $count)
	IniWrite(@ScriptDir & "\获取回放列表总数(每天总数相加)(91IE).ini", "列表", "当天总数", $count);单独一天的数目总数
	$R = IniRead(@ScriptDir & "\获取回放列表总数(每天总数相加)(91IE).ini", "列表", "相加总数和","");读取相加后的总数和
	IniWrite(@ScriptDir & "\获取回放列表总数(每天总数相加)(91IE).ini", "列表", "相加总数和", $count + $R) ;需要把单独一天的数目总数 + 相加后的总数
	$Z = IniRead(@ScriptDir & "\获取回放列表总数(每天总数相加)(91IE).ini", "列表", "相加总数和","");$count+$H后的总数
	MsgBox(1, "获取回放列表总数" ,"获取回放列表相加总数:  " & $Z);$count+$H提示总数



