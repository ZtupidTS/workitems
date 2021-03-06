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
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <EditConstants.au3>
#include <Constants.au3>
#include <array.au3>
#include <WinAPI.au3>
#include <IE.au3>



#Region ### START Koda GUI section ### Form=C:\Users\chtyfox\Desktop\Form1.kxf

Const $FLAG_READING = 1
Const $FLAG_PROTECTED = 2
 
Global $INPUT_FLAG, $INPUT_WNDPROC
Local $oIE
 
$hInputProc = DllCallbackRegister("_InputProc", "long", "hwnd;long;wparam;lparam")
$pInputProc = DllCallbackGetPtr($hInputProc)

;-------------------------------------------------------------------------------------

$Form1 = GUICreate("test", 228, 105, 233, 124)
$Label1 = GUICtrlCreateLabel("帐号", 8, 20, 28, 17)
$Label2 = GUICtrlCreateLabel("密码", 8, 44, 28, 17)
$Input1 = GUICtrlCreateInput("zhqf2013@126.com", 40, 16, 177, 21);zhqf2013@126.com
$INPUT_PASSWORD = GUICtrlCreateInput("xz0031140", 40, 40, 177, 21, BitOR($ES_AUTOHSCROLL, $ES_PASSWORD));网名前面的名字第一个字母+班级学号
$INPUT_WNDPROC = _WinAPI_SetWindowLong(GUICtrlGetHandle(-1), -4, $pInputProc)
$Button1 = GUICtrlCreateButton("确定", 16, 72, 81, 25,$WS_GROUP)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
$Button2 = GUICtrlCreateButton("退出", 128, 72, 81, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

_ProtectInputFromRemoteRead()

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1	
			WinSetState($Form1, "", @SW_HIDE)
			abc()
			GUIDelete($Form1)
		Case $Button2
			Exit
	EndSwitch
WEnd

Func zh()
	$Encryption1 = StringEncrypt(1, GUICtrlRead($Input1), 'abc', 1, 4)
	Return $Encryption1
EndFunc	

Func mm()
	$Encryption = StringEncrypt(1, _ReadData(), 'abc', 1, 4)
	Return $Encryption
EndFunc

Func _ReadData()
        $INPUT_FLAG = BitOR($INPUT_FLAG, $FLAG_READING)
        Local $sPassword = GUICtrlRead($INPUT_PASSWORD)
        $INPUT_FLAG = BitAND($INPUT_FLAG, BitNot($FLAG_READING))
        Return $sPassword
EndFunc ;==>_ReadData
 
Func _ProtectInputFromRemoteRead()
        $INPUT_FLAG = BitXOR($INPUT_FLAG, $FLAG_PROTECTED)
EndFunc ;==>_ProtectInputFromRemoteRead
 
Func _InputProc($hWnd, $iMsg, $iwParam, $ilParam)
        If $iMsg = $WM_GETTEXT And BitAND($INPUT_FLAG, BitOR($FLAG_READING, $FLAG_PROTECTED)) = $FLAG_PROTECTED Then
                Return 1
        EndIf
        Return _WinAPI_CallWindowProc($INPUT_WNDPROC, $hWnd, $iMsg, $iwParam, $ilParam)
EndFunc ;==>_InputProc



Func abc()
	
HotKeySet("!1", "xiaozhan") 
HotKeySet("!2", "suoxiao") 
HotKeySet("!3", "ExitScript") 

Opt("GUIOnEventMode", 1)
Opt("TrayIconHide", 0)
Opt("TrayMenuMode", 1) ;没有默认的（暂停脚本和退出）菜单.
Opt("trayOnEventMode", 1) ;应用 OnEvent 函数于系统托盘

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("更新助手", 679, 425, 192, 124)
$oIE = _IECreateEmbedded()
GUICtrlCreateObj($oIE, 4, 2, 673, 388)
$Button1 = GUICtrlCreateButton("重载", 616, 395, 57, 25)
;GUISetState(@SW_HIDE)
GUISetState(@SW_SHOW)

#EndRegion ### END Koda GUI section ###

re()

GUISetOnEvent( $GUI_EVENT_MINIMIZE, "suoxiao")
GUISetOnEvent($GUI_EVENT_CLOSE, "_Exit")

TraySetOnEvent($TRAY_EVENT_PRIMARYDOUBLE,"xiaozhan") ;注册鼠标左键双击事件(只能在 TrayOnEventMode 设置为 1 时才能使用)
$Start = TrayCreateItem("启用") ;创建第一个菜单项
TrayItemSetOnEvent(-1,"qiyong") ;注册第一个菜单项的（被点下）事件  
;TrayItemSetOnEvent = 当系统托盘发生一个特殊事件就执行一个用户自定义函数
TrayCreateItem("") ;创建一个空白的菜单项（即横斜杠分割符） 
;TrayCreateItem = 在系统托盘上面创建一个菜单项目控件
$Quit = TrayCreateItem("退出") ;创建第三个菜单项
TrayItemSetOnEvent(-1,"ExitScript") ;注册第二个菜单项的（被点下）事件

TraySetClick(8)  ;设置鼠标在系统托盘图标里面的点击模式 - 怎样的鼠标点击才会显示系统托盘的菜单  8 = 按下鼠标次要按键(通常右键) 
TraySetState()


;===============================================================

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			re()
	EndSwitch
WEnd

EndFunc	


Func re()
	_IENavigate($oIE, "http://www.zhaopin.com/")
	_IEAction($oIE, "stop")
	$un = zh()
	$pw = mm()
	$username = StringEncrypt(0, $un, 'abc', 1, 4)
	$password = StringEncrypt(0, $pw, 'abc', 1, 4)
	post($username, $password)
	BlockInput ( 1 ) 
	$Ele = _IEGetObjById($oIE, "loginname")
	_IEFormElementSetValue($Ele, $username)
	$Ele = _IEGetObjById($oIE, "password")
	_IEFormElementSetValue($Ele, $password)
	$Ele = _IETagNameGetCollection($oIE, "BUTTON", 1)
	_IEAction($Ele, "click")
	BlockInput ( 0 ) 
	Sleep(300)
	Return
EndFunc   ;==>re



Func _Exit()
        
     ; DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $gx, "int", 1000, "long", 0x00090000);渐隐

        Exit
        
 EndFunc
 
 
Func xiaozhan()
   GUISetState(@SW_SHOW, $Form1)   ;调整窗口的状态
   GUISetState(@SW_RESTORE, $Form1)
 
EndFunc   ;==>启用(双击鼠标)

Func suoxiao()
 GUISetState(@SW_HIDE,$Form1)
EndFunc

Func qiyong()
   GUISetState(@SW_SHOW, $Form1)    ;调整窗口的状态    
   GUISetState(@SW_RESTORE, $Form1)
  
EndFunc  ;==>启用

Func ExitScript()
   Exit  ; $Quit
EndFunc ;==>退出

Func post($username, $password)
	
	Local $cookie, $oHTTP, $ResponseText, $postdata
	;=======================登录包开始

$postdata = "int_count=999&errUrl=http%3A%2F%2Fmy.zhaopin.com%2Floginmgr%2Floginproc.asp&requestFrom=portal&loginname=zhqf2013@126.com&password=xz0031140";提交数据
$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.option(6) = 0
$oHTTP.Open("post", "http://i.zhaopin.com/Login/LoginManager/Login", False)
$oHTTP.setRequestHeader("Referer", "http://www.zhaopin.com/")
$oHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
$oHTTP.setRequestHeader("Content-Length", "140")
$oHTTP.setRequestHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727)")
$oHTTP.Send($postdata);发送请求
$cookie = $oHTTP.getResponseHeader("Set-Cookie")
$ResponseHeaders = $oHTTP.GetAllResponseHeaders
;$ResponseText = $oHTTP.ResponseText;获取响应正文（文本）
;MsgBox(0, "", $ResponseHeaders);响应头
$oHTTP = 0;释放对象

;======================登录包结束

;~ If StringInStr($ResponseHeaders, "http://i.zhaopin.com") Then
;~ 	MsgBox(0, "提示", "登录成功")
;~ Else
;~ 	MsgBox(0, "提示", "登录失败")
;~ EndIf



;======================刷新包开始
$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("post", "http://i.zhaopin.com/Home/IsRefreshResume?usermasterId=629021106&resumeId=212969366&extId=JM290211067R90250000000&version=1&language=1", False);创建post/get请求；False 同步方式；True 异步方式
;------设置请求头开始
$oHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
$oHTTP.setRequestHeader("Referer", "http://i.zhaopin.com/");来路  就是从哪个网页跳转过来的
$oHTTP.setRequestHeader("Accept-Encoding", "gzip, deflate")
$oHTTP.setRequestHeader("Accept-Language", "zh-cn")
$oHTTP.setRequestHeader("Content-Length", "0")
$oHTTP.setRequestHeader("Connection", "Keep-Alive")
$oHTTP.setRequestHeader("Cookie", $cookie)
$oHTTP.setRequestHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727)");浏览器标识
;------设置请求头结束
$oHTTP.Send("");发送请求
$ResponseText = $oHTTP.ResponseText;获取响应正文（文本）
$oHTTP = 0;释放对象
;MsgBox(0, "", $ResponseText)

;======================刷新包结束

;~ 	If StringInStr($ResponseText, "true") Then
;~ 		MsgBox(0, "提示", "刷新成功")
;~ 	Else
;~ 		MsgBox(0, "提示", "刷新失败")
;~ 	EndIf
EndFunc	

Func StringEncrypt($i_Encrypt, $s_EncryptText, $s_EncryptPassword, $i_EncryptLevel = 1, $i_Flag = 1)
    If $i_Encrypt <> 0 And $i_Encrypt <> 1 Then
        SetError(1)
        Return ''
    ElseIf $s_EncryptText = '' Or $s_EncryptPassword = '' Then
        SetError(1)
        Return ''
    Else
        If Number($i_EncryptLevel) <= 0 Or Int($i_EncryptLevel) <> $i_EncryptLevel Then $i_EncryptLevel = 1
        Local $b_EncryptText
        Local $b_EncryptPassword
        Local $v_EncryptModified
        Local $i_EncryptCountH
        Local $i_EncryptCountG
        Local $v_EncryptSwap
        Local $av_EncryptBox[256][2]
        Local $i_EncryptCountA
        Local $i_EncryptCountB
        Local $i_EncryptCountC
        Local $i_EncryptCountD
        Local $i_EncryptCountE
        Local $v_EncryptCipher
        Local $v_EncryptCipherBy
        $b_EncryptText = StringToBinary($s_EncryptText, $i_Flag)
        $b_EncryptPassword = StringToBinary($s_EncryptPassword, $i_Flag)
        If $i_Encrypt = 1 Then
            For $i_EncryptCountF = 0 To $i_EncryptLevel Step 1
                $i_EncryptCountG = ''
                $i_EncryptCountH = ''
                $v_EncryptModified = Binary('')
                For $i_EncryptCountG = 1 To BinaryLen($b_EncryptText)
                    If $i_EncryptCountH = BinaryLen($b_EncryptPassword) Then
                        $i_EncryptCountH = 1
                    Else
                        $i_EncryptCountH += 1
                    EndIf
                    $v_EncryptModified = Binary($v_EncryptModified) & Binary('0x' & Hex(BitXOR(BinaryMid($b_EncryptText, $i_EncryptCountG, 1), BinaryMid($b_EncryptPassword, $i_EncryptCountH, 1), 255),2))
                Next
                $b_EncryptText = $v_EncryptModified
                $i_EncryptCountA = ''
                $i_EncryptCountB = 0
                $i_EncryptCountC = ''
                $i_EncryptCountD = ''
                $i_EncryptCountE = ''
                $v_EncryptCipherBy = ''
                $v_EncryptCipher = ''
                $v_EncryptSwap = ''
                $av_EncryptBox = ''
                Local $av_EncryptBox[256][2]
                For $i_EncryptCountA = 0 To 255
                    $av_EncryptBox[$i_EncryptCountA][1] = Dec(StringTrimLeft(BinaryMid($b_EncryptPassword, Mod($i_EncryptCountA, BinaryLen($b_EncryptPassword)) + 1, 1),2))
                    $av_EncryptBox[$i_EncryptCountA][0] = $i_EncryptCountA
                Next
                For $i_EncryptCountA = 0 To 255
                    $i_EncryptCountB = Mod(($i_EncryptCountB + $av_EncryptBox[$i_EncryptCountA][0] + $av_EncryptBox[$i_EncryptCountA][1]), 256)
                    $v_EncryptSwap = $av_EncryptBox[$i_EncryptCountA][0]
                    $av_EncryptBox[$i_EncryptCountA][0] = $av_EncryptBox[$i_EncryptCountB][0]
                    $av_EncryptBox[$i_EncryptCountB][0] = $v_EncryptSwap
                Next
                For $i_EncryptCountA = 1 To BinaryLen($b_EncryptText)
                    $i_EncryptCountC = Mod(($i_EncryptCountC + 1), 256)
                    $i_EncryptCountD = Mod(($i_EncryptCountD + $av_EncryptBox[$i_EncryptCountC][0]), 256)
                    $i_EncryptCountE = $av_EncryptBox[Mod(($av_EncryptBox[$i_EncryptCountC][0] + $av_EncryptBox[$i_EncryptCountD][0]), 256) ][0]
                    $v_EncryptCipherBy = BitXOR(BinaryMid($b_EncryptText, $i_EncryptCountA, 1), $i_EncryptCountE)
                    $v_EncryptCipher = Binary($v_EncryptCipher) & Binary('0x' & Hex($v_EncryptCipherBy, 2))
                Next
                $b_EncryptText = StringTrimLeft($v_EncryptCipher,2)
            Next
        Else
            $b_EncryptText = $s_EncryptText
            For $i_EncryptCountF = 0 To $i_EncryptLevel Step 1
                $b_EncryptText = Binary('0x' & $b_EncryptText)
                $i_EncryptCountB = 0
                $i_EncryptCountC = ''
                $i_EncryptCountD = ''
                $i_EncryptCountE = ''
                $v_EncryptCipherBy = ''
                $v_EncryptCipher = ''
                $v_EncryptSwap = ''
                $av_EncryptBox = ''
                Local $av_EncryptBox[256][2]
                For $i_EncryptCountA = 0 To 255
                    $av_EncryptBox[$i_EncryptCountA][1] = Dec(StringTrimLeft(BinaryMid($b_EncryptPassword, Mod($i_EncryptCountA, BinaryLen($b_EncryptPassword)) + 1, 1),2))
                    $av_EncryptBox[$i_EncryptCountA][0] = $i_EncryptCountA
                Next
                For $i_EncryptCountA = 0 To 255
                    $i_EncryptCountB = Mod(($i_EncryptCountB + $av_EncryptBox[$i_EncryptCountA][0] + $av_EncryptBox[$i_EncryptCountA][1]), 256)
                    $v_EncryptSwap = $av_EncryptBox[$i_EncryptCountA][0]
                    $av_EncryptBox[$i_EncryptCountA][0] = $av_EncryptBox[$i_EncryptCountB][0]
                    $av_EncryptBox[$i_EncryptCountB][0] = $v_EncryptSwap
                Next
                For $i_EncryptCountA = 1 To BinaryLen($b_EncryptText)
                    $i_EncryptCountC = Mod(($i_EncryptCountC + 1), 256)
                    $i_EncryptCountD = Mod(($i_EncryptCountD + $av_EncryptBox[$i_EncryptCountC][0]), 256)
                    $i_EncryptCountE = $av_EncryptBox[Mod(($av_EncryptBox[$i_EncryptCountC][0] + $av_EncryptBox[$i_EncryptCountD][0]), 256) ][0]
                    $v_EncryptCipherBy = BitXOR(BinaryMid($b_EncryptText, $i_EncryptCountA, 1), $i_EncryptCountE)
                    $v_EncryptCipher = Binary($v_EncryptCipher) & Binary('0x' & Hex($v_EncryptCipherBy,2))
                Next
                $b_EncryptText = $v_EncryptCipher
                $i_EncryptCountG = ''
                $i_EncryptCountH = ''
                $v_EncryptModified = ''
                For $i_EncryptCountG = 1 To BinaryLen($b_EncryptText)
                    If $i_EncryptCountH = BinaryLen($b_EncryptPassword) Then
                        $i_EncryptCountH = 1
                    Else
                        $i_EncryptCountH += 1
                    EndIf
                    $v_EncryptModified = Binary($v_EncryptModified) & Binary('0x' & Hex(BitXOR(BinaryMid($b_EncryptText, $i_EncryptCountG, 1), BinaryMid($b_EncryptPassword, $i_EncryptCountH, 1), 255),2))
                Next
                $b_EncryptText = BinaryToString($v_EncryptModified, $i_Flag)
            Next
        EndIf
        Return $b_EncryptText
    EndIf
EndFunc   ;==>_StringEncrypt
