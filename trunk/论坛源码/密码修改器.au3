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
#include <process.au3>
Opt("GUIOnEventMode", 1)

$MainForm = GUICreate("�����޸���", 250, 176, 192, 114)
GUISetIcon("user.ico", -1)
GUISetOnEvent($GUI_EVENT_CLOSE, "MainFormClose")
$Label1 = GUICtrlCreateLabel("��ǰ�û���:", 32, 21, 67, 17)
$Input1 = GUICtrlCreateInput("", 104, 16, 113, 21)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label2 = GUICtrlCreateLabel("��������:", 32, 53, 55, 17)
$Input2 = GUICtrlCreateInput("", 104, 48, 113, 21, BitOR($ES_PASSWORD,$ES_AUTOHSCROLL))
GUICtrlSetOnEvent(-1, "Input2Change")
$Label3 = GUICtrlCreateLabel("ȷ������:", 32, 85, 55, 17)
$Input3 = GUICtrlCreateInput("", 104, 80, 113, 21, BitOR($ES_PASSWORD,$ES_AUTOHSCROLL))
GUICtrlSetOnEvent(-1, "Input3Change")
$Button1 = GUICtrlCreateButton("�޸�", 32, 128, 75, 25)
GUICtrlSetOnEvent(-1, "Button1Click")
$Button2 = GUICtrlCreateButton("ȡ��", 144, 128, 75, 25)
GUICtrlSetOnEvent(-1, "Button2Click")

GUICtrlSetData($Input1, GetLogonUserName())

GUISetState(@SW_SHOW)

While 1
        Sleep(100)
WEnd

Func Button1Click()
        Local $strUser = GUICtrlRead($Input1)
        Local $strPass1 = GUICtrlRead($Input2)
        Local $strPass2 = GUICtrlRead($Input3)
        If $strPass1 == $strPass2 Then
                If $strPass1 == "" Then
                        MsgBox(64, "��Ϣ", "���벻��Ϊ��")
                       GUICtrlSetState($Input2, $GUI_FOCUS)
                Else
                        _RunDOS("net user %username% " & $strPass1)
                        MsgBox(64, "��Ϣ", "�����޸ĳɹ�")
                EndIf
        Else
                MsgBox(64, "��Ϣ", "������������벻һ��, ����������")
                GUICtrlSetState($Input2, $GUI_FOCUS)
        EndIf
EndFunc

Func Button2Click()
        GUICtrlSetData($Input2, "")
        GUICtrlSetData($Input3, "")
EndFunc

Func Input2Change()

EndFunc

Func Input3Change()

EndFunc

Func MainFormClose()
        DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $MainForm, "int", 500, "long", 0x00090000)
        Exit
EndFunc

Func GetLogonUserName()
        Local $strKeyPath = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer"
        Local $strValueName = "Logon User Name"

        Return RegRead($strKeyPath, $strValueName)
EndFunc