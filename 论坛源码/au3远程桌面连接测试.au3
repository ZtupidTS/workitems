#Region ACN预处理程序参数(常用参数)
#PRE_Icon= 										;图标,支持EXE,DLL,ICO
#PRE_OutFile=									;输出文件名
#PRE_OutFile_Type=exe							;文件类型
#PRE_Compression=4								;压缩等级
#PRE_UseUpx=y 									;使用压缩
#PRE_Res_Comment= 								;程序注释
#PRE_Res_Description=							;详细信息
#PRE_Res_Fileversion=							;文件版本
#PRE_Res_FileVersion_AutoIncrement=p			;自动更新版本
#PRE_Res_LegalCopyright= 						;版权
#PRE_Change2CUI=N                   			;修改输出的程序为CUI(控制台程序)
;#PRE_Res_Field=AutoIt Version|%AutoItVer%		;自定义资源段
;#PRE_Run_Tidy=                   				;脚本整理
;#PRE_Run_Obfuscator=      						;代码迷惑
;#PRE_Run_AU3Check= 							;语法检查
;#PRE_Run_Before= 								;运行前
;#PRE_Run_After=								;运行后
;#PRE_UseX64=n									;使用64位解释器
;#PRE_Compile_Both								;进行双平台编译
#EndRegion ACN预处理程序参数设置完成
#cs ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

 Au3 版本: 
 脚本作者: 
 电子邮件: 
	QQ/TM: 
 脚本版本: 
 脚本功能: 

#ce ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿脚本开始＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

#include <GUIConstants.au3>
#include <WindowsConstants.au3>

$oRDP = ObjCreate("Mstscax.Mstscax")
GUICreate("au3远程桌面连接测试", 640, 480, -1 , -1, $WS_OVERLAPPEDWINDOW + $WS_VISIBLE + $WS_CLIPSIBLINGS)
$GUIActiveX = GUICtrlCreateObj($oRDP, 10, 10, 620, 460)
GUICtrlSetStyle ( $GUIActiveX, $WS_VISIBLE )
GUICtrlSetResizing ($GUIActiveX,$GUI_DOCKAUTO)

GUISetState()

$oRDP.Server = "218.25.87.2" 
$oRDP.Domain = "" 
$oRDP.UserName = "guest" 
$oRDP.AdvancedSettings2.ClearTextPassword = "demo888" 
$oRDP.FullScreen = False 
$oRDP.AdvancedSettings2.RedirectDrives = True 
$oRDP.AdvancedSettings2.RedirectPrinters = False 
$oRDP.AdvancedSettings2.RedirectPorts = False 
$oRDP.AdvancedSettings2.RedirectSmartCards = False 
$oRDP.ConnectingText = "正在在连接 ...." 
$oRDP.AdvancedSettings2.EnableAutoReconnect = True
$oRDP.AdvancedSettings2.allowBackgroundInput = true
$oRDP.AdvancedSettings2.ConnectionBarShowRestoreButton = False
$oRDP.AdvancedSettings5.AudioRedirectionMode = 0
$oRDP.Connect()

While 1
$msg = GUIGetMsg()
Select
Case $msg = $GUI_EVENT_CLOSE
ExitLoop
EndSelect
WEnd

GUIDelete()

Exit