#Region ;**** 参数创建于 ACNWrapper_GUI ****
#PRE_icon=C:\Users\chtyfox\Desktop\删除CMS数据库.exe|-1
#PRE_Outfile=C:\Users\chtyfox\Desktop\删除CMS数据库(去掉字符串的方法).exe
#PRE_Compression=4
#PRE_UseUpx=n
#PRE_Res_Comment=安联
#PRE_Res_Description=安联
#PRE_Res_Fileversion=1.0.0.1
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=安联
#EndRegion ;**** 参数创建于 ACNWrapper_GUI ****
#Region ACN预处理程序参数(常用参数)
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

	;FileDelete (@AppDataDir & "\Video Client\SysConfig.mdb");删除数据库
	ShellExecute (@AppDataDir & "\Video Client\");把数据库移到回收站

