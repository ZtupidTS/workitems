;~  / / decoded by ximo[LCG]
;~  / / http: / / www.52pojie.cn /
;~  / / 2012 - 5 - 16 16:31
#region
#AutoIt3Wrapper_icon=z:\bat\ico\1.ico
#AutoIt3Wrapper_Res_Comment=���ǣ�������ǳ�Ʒ��
#AutoIt3Wrapper_Res_Description=����
#AutoIt3Wrapper_Res_Fileversion=0.0.1.80
#AutoIt3Wrapper_Res_LegalCopyright=Copyright by 2010 ������� QQ��93632200
#AutoIt3Wrapper_Res_Field=������|����UFO
#AutoIt3Wrapper_Res_Field=�ٷ���վ|www.uunms.com
#AutoIt3Wrapper_Compression=4
#endregion
#NoTrayIcon
Opt("GUIOnEventMode", 1)
$AU3DIR = RegRead("HKLM\SOFTWARE\AutoIt v3\AutoIt", "InstallDir")
If $AU3DIR = "" Then Exit (MsgBox(16, "����", "δ��⵽AU3�İ�װ·��!!!" & @CRLF & "��ȷ���Ѿ���ȷ��װAU3"))
Global Const $TAGCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName"
Global $CUSTCOLORS = "dword[16]"
Global $TCHOOSE = DllStructCreate($TAGCHOOSECOLOR)
Global $TCC = DllStructCreate($CUSTCOLORS)
DllStructSetData($TCHOOSE, "Size", DllStructGetSize($TCHOOSE))
DllStructSetData($TCHOOSE, "CustColors", DllStructGetPtr($TCC))
DllStructSetData($TCHOOSE, "Flags", 259)
Global $ZT, $BJ, $KB1, $KB2, $SHOW, $FT
Global $SCITEPATH = $AU3DIR & "\Scite\"
$ZT = StringReplace( READINI("sidebar.foreground", "#0FD50F"), "#", "0x")
$BJ = StringReplace( READINI("sidebar.background", "#151A1D"), "#", "0x")
Local $TMP = StringSplit( READINI("command.shortcut.30.*", "Alt+S"), "+")
$KB1 = $TMP[1]
$KB2 = $TMP[2]
$SHOW = READINI("sidebar.show", 1)
$FT = READINI("sidebar.position", "right")
#region
$GUI = GUICreate("Scite�����For_AU3", 280, 240)
GUISetOnEvent(+ - 3, "onevent")
GUICtrlCreateGroup("�����ѡ��", 5, 5, 180, 210, 768)
GUICtrlCreateLabel("������ɫ:", 15, 30, 65, 20, 2)
$ZTLB = GUICtrlCreateLabel("", 85, 25, 50, 20, 2)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUICtrlSetBkColor(+ - 1, $ZT)
GUICtrlCreateLabel("������ɫ:", 15, 60, 65, 20, 2)
$BJLB = GUICtrlCreateLabel("", 85, 55, 50, 20, 2)
GUICtrlSetBkColor(+ - 1, $BJ)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUICtrlCreateGroup("��ݼ�", 15, 80, 150, 40)
$KCB1 = GUICtrlCreateCombo("", 25, 95, 60, 20, 3)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUICtrlSetData(+ - 1, "CTRL|SHIFT|ALT", $KB1)
GUICtrlCreateLabel("+", 85, 93, 20, 20, 2)
GUICtrlSetFont(+ - 1, 18)
$KCB2 = GUICtrlCreateCombo("", 115, 95, 40, 20, 3)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUICtrlSetData(+ - 1, "A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z", $KB2)
$CKB1 = GUICtrlCreateCheckbox("Scite����ʱ��ʾ�����", 20, 130, 150, 20)
GUICtrlSetOnEvent(+ - 1, "onevent")
If $SHOW = 1 Then GUICtrlSetState(+ - 1, 1)
GUICtrlCreateGroup("�������λ��", 15, 160, 150, 50)
$CKB2 = GUICtrlCreateRadio("���", 30, 180, 40, 20)
GUICtrlSetOnEvent(+ - 1, "onevent")
$CKB3 = GUICtrlCreateRadio("�Ҳ�", 110, 180, 40, 20)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUICtrlCreateLabel(" �����������", + - 2, 222, 282, 20, 4928)
GUICtrlSetState(+ - 1, 128)
GUICtrlCreateLabel("�����������", 0, 222, 85, 20, 4929)
GUICtrlCreateLabel("http:www.uunms.com", 85, 222, 115, 20, 4929)
GUICtrlSetOnEvent(+ - 1, "uunms")
GUICtrlSetColor(+ - 1, 16733440)
GUICtrlSetCursor(+ - 1, 0)
GUICtrlSetTip(+ - 1, "�Ϲ��ϳ�")
GUICtrlCreateLabel("bbs.wglm.net", 200, 222, 80, 20, 4929)
GUICtrlSetOnEvent(+ - 1, "wglm")
GUICtrlSetColor(+ - 1, 22015)
GUICtrlSetCursor(+ - 1, 0)
GUICtrlSetTip(+ - 1, "AU3������̳")
If $FT = "left" Then
	GUICtrlSetState($CKB2, 1)
Else
	GUICtrlSetState($CKB3, 1)
EndIf
$SBTN = GUICtrlCreateButton("��������", 190, 15, 80, 30)
GUICtrlSetOnEvent(+ - 1, "onevent")
$IBTN = GUICtrlCreateButton("��װ�����", 190, 55, 80, 30)
GUICtrlSetOnEvent(+ - 1, "onevent")
$UBTN = GUICtrlCreateButton("ж�ز����", 190, 95, 80, 30)
GUICtrlSetOnEvent(+ - 1, "onevent")
$CBTN = GUICtrlCreateButton("�˳�����", 190, 135, 80, 30)
GUICtrlSetOnEvent(+ - 1, "onevent")
GUISetState()
#endregion
If READINI("command.30.*", "benkel") = "benkel" Then
	Global $INSTALL = 0
	GUICtrlSetState($SBTN, 128)
	GUICtrlSetState($UBTN, 128)
Else
	Global $INSTALL = 1
	GUICtrlSetState($IBTN, 128)
EndIf
While 1
	Sleep(1000)
WEnd
Func ONEVENT()
	Switch @GUI_CtrlId
		Case + -3, $CBTN
			Exit
		Case $ZTLB
			ConsoleWrite(111 & @CRLF)
			$ZT = _ChooseColor($ZT, $GUI)
			If $ZT <> + - 1 Then GUICtrlSetBkColor($ZTLB, $ZT)
		Case $BJLB
			$BJ = _ChooseColor($BJ, $GUI)
			If $BJ <> + - 1 Then GUICtrlSetBkColor(@GUI_CtrlId, $BJ)
		Case $KCB1
			$KB1 = GUICtrlRead($KCB1)
		Case $KCB2
			$KB2 = GUICtrlRead($KCB2)
		Case $CKB1
			$SHOW = BitXOR($SHOW, 1)
		Case $CKB2
			$FT = "left"
		Case $CKB3
			$FT = "right"
		Case $SBTN
			SAVEINI()
		Case $IBTN
			FILEADD()
			SAVEINI(1)
			Local $OFILE = FileOpen($SCITEPATH & "ACNLua\SciTEStartup.lua")
			Local $RSTR = FileRead($OFILE)
			If StringInStr($RSTR, "-- ��ʼ�¼�(����OnStartup()).") Then
				$RSTR = StringReplace($RSTR, "-- ��ʼ�¼�", "dofile (props['SciteDefaultHome']..' \\SideBar.lua')" & @CRLF & "-- ��ʼ�¼�")
			Else
				$RSTR = StringReplace($RSTR, "EventClass:BeginEvents()", "dofile (props['SciteDefaultHome']..' \\SideBar.lua')" & @CRLF & "EventClass:BeginEvents()")
			EndIf
			FileClose($OFILE)
			Local $OFILE = FileOpen($SCITEPATH & "ACNLua\SciTEStartup.lua", 2)
			FileWrite($OFILE, $RSTR)
			FileClose($OFILE)
			MsgBox(64, "��װ���", "����Scite��Ч!!!")
			GUICtrlSetState($IBTN, 128)
			GUICtrlSetState($SBTN, 64)
			GUICtrlSetState($UBTN, 64)
		Case $UBTN
			If MsgBox(36, "�Ƿ�ɾ�������֧�ֿ�?", "ɾ�������֧�ֿ����˳�Scit!") = 6 Then
				FILEDEL("gui.dll")
				FILEDEL("iconv.dll")
				FILEDEL("lpeg.dll")
				FILEDEL("shell.dll")
				FILEDEL("SideBar.lua")
			EndIf
			Local $OFILE = FileOpen($SCITEPATH & "ACNLua\SciTEStartup.lua")
			Local $RSTR = StringReplace(FileRead($OFILE), "dofile (props[' SciteDefaultHome']..' \\SideBar.lua')" & @CRLF, "")
			FileClose($OFILE)
			Local $OFILE = FileOpen($SCITEPATH & "ACNLua\SciTEStartup.lua", 2)
			FileWrite($OFILE, $RSTR)
			FileClose($OFILE)
			IniDelete($SCITEPATH & "ȫ������.properties", "Side Bar")
			MsgBox(64, "ж�����", "����Scite��Ч!!!")
			GUICtrlSetState($IBTN, 64)
			GUICtrlSetState($SBTN, 128)
			GUICtrlSetState($UBTN, 128)
	EndSwitch
EndFunc   ;==>ONEVENT
Func _ChooseColor($ICOLORREF = 16777215, $HWNDOWNDER = 0)
	$ICOLORREF = StringFormat("%06X", $ICOLORREF)
	$ICOLORREF = "0x" & StringMid($ICOLORREF, 5, 2) & StringMid($ICOLORREF, 3, 2) & StringMid($ICOLORREF, 1, 2)
	DllStructSetData($TCHOOSE, "rgbResult", $ICOLORREF)
	DllStructSetData($TCHOOSE, "hWndOwnder", $HWNDOWNDER)
	Local $ARESULT = DllCall("comdlg32.dll", "bool", "ChooseColor", "ptr", DllStructGetPtr($TCHOOSE))
	If @error Then Return SetError(@error, @extended, + - 1)
	If $ARESULT[0] = 0 Then Return SetError(+ - 3, + - 3, + - 1)
	Local $COLOR_PICKED = DllStructGetData($TCHOOSE, "rgbResult")
	$COLOR_PICKED = StringFormat("%06X", $COLOR_PICKED)
	Return "0x" & StringMid($COLOR_PICKED, 5, 2) & StringMid($COLOR_PICKED, 3, 2) & StringMid($COLOR_PICKED, 1, 2)
EndFunc   ;==>_CHOOSECOLOR
Func UUNMS()
	ShellExecute("http://www.uunms.com")
EndFunc   ;==>UUNMS
Func WGLM()
	ShellExecute("http://bbs.wglm.net")
EndFunc   ;==>WGLM
Func SAVEINI($_INSTALL = 0)
	WRITEINI("sidebar.show", $SHOW)
	WRITEINI("sidebar.position", $FT)
	WRITEINI("sidebar.foreground", StringReplace($ZT, "0x", "#"))
	WRITEINI("sidebar.background", StringReplace($BJ, "0x", "#"))
	WRITEINI("command.shortcut.30.*", $KB1 & "+" & $KB2)
	If $_INSTALL = 0 Then Return
	WRITEINI("sidebar.dock", 0)
	WRITEINI("command.checked.30.*", "$(sidebar.show)")
	WRITEINI("command.name.30.*", "Side Bar")
	WRITEINI("command.30.*", "SideBar_ShowHide")
	WRITEINI("command.mode.30.*", "subsystem:lua,savebefore:no")
	WRITEINI("sidebar.functions.flags", 0)
	WRITEINI("sidebar.functions.params", 0)
	WRITEINI("project.opendir.buildtags", 1)
EndFunc   ;==>SAVEINI
Func READINI($INIKEY, $INIDEF = "")
	Return IniRead($SCITEPATH & "ȫ������.properties", "Side Bar", $INIKEY, $INIDEF)
EndFunc   ;==>READINI
Func WRITEINI($INIKEY, $INIDEF)
	Return IniWrite($SCITEPATH & "ȫ������.properties", "Side Bar", $INIKEY, $INIDEF)
EndFunc   ;==>WRITEINI
Func FILEADD()
	If Not FileExists($SCITEPATH & "gui.dll") Then
		FileInstall("gui.dll", $SCITEPATH & "gui.dll", 1)
	Else
		WRITEINI("gui.dll", 1)
	EndIf
	If Not FileExists($SCITEPATH & "iconv.dll") Then
		FileInstall("iconv.dll", $SCITEPATH & "iconv.dll", 1)
	Else
		WRITEINI("iconv.dll", 1)
	EndIf
	If Not FileExists($SCITEPATH & "lpeg.dll") Then
		FileInstall("lpeg.dll", $SCITEPATH & "lpeg.dll", 1)
	Else
		WRITEINI("lpeg.dll", 1)
	EndIf
	If Not FileExists($SCITEPATH & "shell.dll") Then
		FileInstall("shell.dll", $SCITEPATH & "shell.dll", 1)
	Else
		WRITEINI("shell.dll", 1)
	EndIf
	If Not FileExists($SCITEPATH & "SideBar.lua") Then
		FileInstall("SideBar.lua", $SCITEPATH & "SideBar.lua", 1)
	Else
		WRITEINI("SideBar.lua", 1)
	EndIf
EndFunc   ;==>FILEADD
Func FILEDEL($TFILE)
	If READINI($TFILE, "Null") = "Null" Then FileDelete($SCITEPATH & $TFILE)
EndFunc   ;==>FILEDEL
