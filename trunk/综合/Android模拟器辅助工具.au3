#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=J:\android-sdk-windows\AVD Manager.exe|-1
#AutoIt3Wrapper_Outfile=C:\Users\chtyfox\Desktop\Androidģ������������.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=xz00311����
#AutoIt3Wrapper_Res_Description=xz00311����
#AutoIt3Wrapper_Res_Fileversion=2.3.0.1
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=p
#AutoIt3Wrapper_Res_LegalCopyright=xz00311
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#Region ACNԤ����������(���ò���)
#PRE_Icon= 										;ͼ��,֧��EXE,DLL,ICO
#PRE_OutFile=									;����ļ���
#PRE_OutFile_Type=exe							;�ļ�����
#PRE_Compression=4								;ѹ���ȼ�
#PRE_UseUpx=y 									;ʹ��ѹ��
#PRE_Res_Comment= 								;����ע��
#PRE_Res_Description=							;��ϸ��Ϣ
#PRE_Res_Fileversion=							;�ļ��汾
#PRE_Res_FileVersion_AutoIncrement=p			;�Զ����°汾
#PRE_Res_LegalCopyright= 						;��Ȩ
#PRE_Change2CUI=N                   			;�޸�����ĳ���ΪCUI(����̨����)
;#PRE_Res_Field=AutoIt Version|%AutoItVer%		;�Զ�����Դ��
;#PRE_Run_Tidy=                   				;�ű�����
;#PRE_Run_Obfuscator=      						;�����Ի�
;#PRE_Run_AU3Check= 							;�﷨���
;#PRE_Run_Before= 								;����ǰ
;#PRE_Run_After=								;���к�
;#PRE_UseX64=n									;ʹ��64λ������
;#PRE_Compile_Both								;����˫ƽ̨����
#EndRegion ACNԤ�����������������
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

 Au3 �汾: 
 �ű�����: 
 �����ʼ�: 
	QQ/TM: 
 �ű��汾: 
 �ű�����: 

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include <WinapiEX.au3>
#Region ### START Koda GUI section ### Form=
$SDK = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��","")
$APKLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��","")
$WJM = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "Androidģ����APK�ļ���","")
$DNLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "���Ա���·��","")
$AVDLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "�޸�AVD�洢·��","")

$Form = GUICreate("Androidģ��������", 433, 526, 304, 145)
$Checkbox1 = GUICtrlCreateCheckbox("Androidģ������װAPK", 96, 64, 169, 17)
$Checkbox2 = GUICtrlCreateCheckbox("�����ļ���Androidģ����", 96, 97, 169, 17)
$Checkbox3 = GUICtrlCreateCheckbox("Androidģ�������Ƶ�����", 96, 232, 249, 17)
$Checkbox4 = GUICtrlCreateCheckbox("����Androidϵͳ���·��", 96, 384, 161, 17)
$Label1 = GUICtrlCreateLabel("Androidģ������װ�͸���APK�ļ�", 88, 8, 180, 17)
$Label2 = GUICtrlCreateLabel("����Androidģ����ʱ���봴��SD��", 88, 40, 188, 17)
$Label3 = GUICtrlCreateLabel("SDK-platform-tools·��", 12, 132, 132, 17)
$Label4 = GUICtrlCreateLabel("��װ�͸��Ƶ�APK�ļ�·��", 12, 172, 138, 17)
$Label5 = GUICtrlCreateLabel("Androidģ����APK�ļ���", 12, 270, 136, 17)
$Label6 = GUICtrlCreateLabel("ע��:APK�ļ�������" & @CRLF & "����ֻ�������ֺ���" & @CRLF & "ĸ��QQ.apk����QQ��" & @CRLF & "��Ϊ1.1�Ѱ�װ,�밲" & @CRLF & "װQQ1.2������ɾ��" & @CRLF & "QQ1.1" , 304, 32, 174, 75)
$Label7 = GUICtrlCreateLabel("���Ա���·��", 12, 308, 138, 17)
$Label8 = GUICtrlCreateLabel("����Androidϵͳ���·��", 16, 428, 144, 17)
$Input1 = GUICtrlCreateInput($SDK, 160, 128, 169, 21)
$Input2 = GUICtrlCreateInput($APKLJ, 160, 168, 169, 21)
$Input3 = GUICtrlCreateInput($WJM, 160, 266, 169, 21)
$Input4 = GUICtrlCreateInput($DNLJ, 160, 304, 169, 21)
$Input5 = GUICtrlCreateInput($AVDLJ, 160, 424, 169, 21)
$Button1 = GUICtrlCreateButton("ȷ��", 72, 482, 105, 25,$WS_GROUP)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
$Button2 = GUICtrlCreateButton("ȡ��", 253, 482, 105, 25)
$Button3 = GUICtrlCreateButton("�ֶ�����·��", 336, 126, 81, 25)
$Button4 = GUICtrlCreateButton("�ֶ�����·��", 336, 166, 81, 25)
$Button5 = GUICtrlCreateButton("�ֶ�����·��", 336, 302, 81, 25)
$Button6 = GUICtrlCreateButton("�ֶ�����·��", 336, 422, 81, 25)
$Group1 = GUICtrlCreateGroup("Androidģ�������Ƶ�����", 8, 208, 417, 137)
$Group2 = GUICtrlCreateGroup("�޸�AVD�洢·��(����Androidϵͳ���·��)", 8, 360, 417, 105)
$Edit1 = GUICtrlCreateEdit(" ����ʹ��Android-AVD�ļ���", 255, 383, 161, 17, $ES_READONLY)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Select 
		Case $nMsg = $GUI_EVENT_CLOSE
			Exit
		Case $nMsg = $Button2
			Exit
		Case $nMsg = $Button6
			sdAVDLJT()
		Case $nMsg = $Button5
			sdDNLJ()
		Case $nMsg = $Button4
			sdAPK()
		Case $nMsg = $Button3
			sdSDK()
		Case $nMsg = $Button1
			GUISetState(@SW_HIDE,$Form)
			csh()
			Exit
	EndSelect
WEnd

Func csh()
	If BitAND(GUICtrlRead($Checkbox1), $GUI_CHECKED) Then
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��", GUICtrlRead ($Input1)) 
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��",GUICtrlRead ($Input2))
		Sleep(1000)
		_SDK()
	ElseIf BitAND(GUICtrlRead($Checkbox2), $GUI_CHECKED) Then
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��", GUICtrlRead ($Input1)) 
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��",GUICtrlRead ($Input2))
		Sleep(1000)
		_APKFZ()
	EndIf
	If BitAND(GUICtrlRead($Checkbox1), $GUI_CHECKED) And BitAND(GUICtrlRead($Checkbox2), $GUI_CHECKED) Then ;BitAnd �Ƚ�ǰ������ֵ
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��", GUICtrlRead ($Input1))
		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��",GUICtrlRead ($Input2))
		Sleep(1000)
		_APKFZ()
	EndIf
	If BitAND(GUICtrlRead($Checkbox3), $GUI_CHECKED) Then ;BitAnd �Ƚ�ǰ������ֵ	
 		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "Androidģ����APK�ļ���",GUICtrlRead ($Input3))	
 		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "���Ա���·��",GUICtrlRead ($Input4))
 		Sleep(1000)
 		_DNLJ()
 	EndIf
	If BitAND(GUICtrlRead($Checkbox4), $GUI_CHECKED) Then ;BitAnd �Ƚ�ǰ������ֵ	
 		IniWrite(@ScriptDir & "\Androidģ����.ini", "Android", "�޸�AVD�洢·��",GUICtrlRead ($Input5))	
		DirCreate(GUICtrlRead ($Input5))
 		Sleep(1000)
 		_AVDLJT()
 	EndIf
EndFunc


Func _SDK()
	$SDK = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��","")
	$APKLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��","")
	RunWait(@ComSpec & ' /c ' & StringLeft($SDK, StringInStr($SDK, '\')), '', @SW_HIDE)
	RunWait(@ComSpec & ' /c ' & 'cd ' & $SDK, '', @SW_HIDE)
	RunWait(@ComSpec & ' /c ' & 'adb install ' & $APKLJ, '', @SW_HIDE)
	MsgBox(0,"APK�ļ�","��װ�ɹ�")
EndFunc	
		
Func _APKFZ()
	$SDK = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "SDK-platform-tools·��","")
	$APKLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "��װ�͸��Ƶ�APK�ļ�·��","")
	$array = StringSplit($APKLJ, '\')
    $num = $array[0]
	RunWait(@ComSpec & ' /c ' & StringLeft($SDK, StringInStr($SDK, '\')), '', @SW_HIDE)
	RunWait(@ComSpec & ' /c ' & 'cd ' & $SDK, '', @SW_HIDE)
	RunWait(@ComSpec & ' /c ' & 'adb push '& $APKLJ &  ' /sdcard/' & $array[$num], '', @SW_HIDE)
	MsgBox(0,"APK�ļ�����","���Ƴɹ�")
EndFunc	

Func _DNLJ()
	$WJM = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "Androidģ����APK�ļ���","")
	$DNLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "���Ա���·��","")
	RunWait(@ComSpec & ' /c ' & 'adb pull /sdcard/' & $WJM & ' ' & $DNLJ & $WJM, '', @SW_HIDE)
	MsgBox(0,"APK�ļ�����","���Ƴɹ�")
EndFunc	

Func _AVDLJT()
	$AVDLJ = IniRead(@scriptdir & "\Androidģ����.ini", "Android", "�޸�AVD�洢·��","")
	_EnvCreate("ANDROID_SDK_HOME",$AVDLJ)
	EnvUpdate()
	MsgBox(0,"�޸Ĵ洢·��","�޸�AVD�洢·���ɹ�")
EndFunc	

Func sdSDK();�ֶ�����·�� SDK�ļ�·��
		$SDKT  = FileSelectFolder("��ָ��Androidģ��������·��", "")
		If @error Then
			MsgBox(4096,"","û��ѡ���ļ���!")
		Else
			GUICtrlSetData($Input1, _WinAPI_PathAddBackslash($SDKT))
		EndIf
		
	EndFunc
	
Func sdAPK();�ֶ�����·�� APK�ļ���·��
		$APKT  = FileOpenDialog("��ָ��FT-200W�ļ�����·��", "", "��ִ���ļ�(*.apk)|�����ļ�(*.*)", 3, "")
		If @error Then
			MsgBox(4096,"","û��ѡ���ļ�!")
		Else
			GUICtrlSetData($Input2, $APKT)
		EndIf
		
	EndFunc
	
Func sdDNLJ();�ֶ�����·�� ���Ա���·��
		$DNLJT  = FileSelectFolder("��ָ��Androidģ��������·��", "")
		If @error Then
			MsgBox(4096,"","û��ѡ���ļ���!")
		Else
			GUICtrlSetData($Input4, _WinAPI_PathAddBackslash($DNLJT))
		EndIf
		
	EndFunc
	
Func sdAVDLJT();�ֶ�����·�� �޸�AVD�洢·��(����Androidϵͳ���·��)
		$AVDLJT  = FileSelectFolder("��ָ��Androidģ��������·��", "")
		If @error Then
			MsgBox(4096,"","û��ѡ���ļ���!")
		Else
			;GUICtrlSetData($Input5, _WinAPI_PathAddBackslash($AVDLJT)); & "Android-AVD")
			GUICtrlSetData($Input5, $AVDLJT)
		EndIf
		
	EndFunc
	
;ϵͳ��������д��
#cs===========================================
;_EnvCreate(����,ֵ)
_EnvCreate("test","This is test")
;_EnvSet(����,ֵ)
_EnvSet("test","is trim")
;_EnvDel(����)
_EnvSet("test")
#ce===========================================
Func _EnvCreate($_EnvName,$_EnvValue)
$strComputer = "."
$objWMIService = ObjGet("winmgmts:\\" & $strComputer & "\root\cimv2")
$objVariable = $objWMIService.Get("Win32_Environment").SpawnInstance_   ;ʹ��spawninstance_�����������հ׻�������
;���û�����������
$objVariable.Name = $_EnvName
$objVariable.UserName = "<System>"
$objVariable.VariableValue = $_EnvValue
$objVariable.Put_  ;�ύ���
Return SetError(-1)
EndFunc

Func _EnvSet($_EnvName,$_EnvValue)
RegWrite("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment",$_EnvName,"REG_SZ",$_EnvValue)
Return SetError(@error)
EndFunc

Func _EnvDel($_EnvName)
RegDelete("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment",$_EnvName)
Return SetError(@error)
EndFunc
#cs	
��װ�ļ�
k:
cd k:\android-sdk-windows\platform-tools

adb install d:\b.apk


pause

RunWait(@ComSpec & ' /c ' & 'k:', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'cd k:\android-sdk-windows\platform-tools', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'adb install d:\a.apk', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'pause', '', @SW_HIDE)

�����ļ� ģ����
k:
cd k:\android-sdk-windows\platform-tools

adb push d:\b.apk /sdcard/b.apk

pause


RunWait(@ComSpec & ' /c ' & 'k:', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'cd k:\android-sdk-windows\platform-tools', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'adb push d:\b.apk /sdcard/b.apk', '', @SW_HIDE)
RunWait(@ComSpec & ' /c ' & 'pause', '', @SW_HIDE)

ģ�������Ƶ�����
adb pull /sdcard/b.apk k:\b.apk
RunWait(@ComSpec & ' /c ' & 'adb pull /sdcard/b.apk k:\b.apk', '', @SW_HIDE)

��ȡD�̵ķ���
$path='D:\11'

$path='D:\11'
MsgBox(0, '', StringLeft($path, StringInStr($path, '\')))

��ȡD�̵ķ���11.exe
$path = 'D:\11\11.exe'
$array = StringSplit($path, '\')
$num = $array[0] ;��һ��Ԫ��($array[0])�����ֺ��Ӵ�������
MsgBox(0, '', $array[$num])

#ce		