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
;Opt("TrayIconHide", 1) ;不显示任务栏图标.
Opt("TrayAutoPause",1) ;当单击托盘图标时不暂停. 
HotKeySet("+!d", "mb");退出程序快捷键.
;读取ini配置文件
Global $var = IniReadSection("myfile.ini", "字段1")
Global $i = 1
If @error Then
    MsgBox(4096, "", "错误, 读取配置文件失败.")
Else
    For $i = 1 To $var[0][0]
		 If ProcessExists($var[$i][1]) Then
               MsgBox(4096, "", "关键字: " & "存在")
				;Run($var[$i][1])
			Else
					Exit
        EndIf
        MsgBox(4096, "", "关键字: " & $var[$i][0] & @CRLF & "值: " & $var[$i][1])
    Next
EndIf
;读取结束

Func mb()
        Exit
EndFunc
	
	
;~ [字段1]
;~ 腾讯QQ=QQ.exe
;~ QQ旋风=QQDownload.exe