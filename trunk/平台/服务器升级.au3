#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=J:\putty.exe
#PRE_Outfile=C:\Users\chtyfox\Desktop\����������.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=3.0.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=Сվ����
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#Region ACNԤ����������(���ò���)
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
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiIPAddress.au3>
$GUI_1 = GUICreate("�����������ļ�����", 257, 153, 953, 410)
$Label1 = GUICtrlCreateLabel("ע��!���б��ű��벻Ҫ����������лл", 16, 8, 228, 17)
$Button1 = GUICtrlCreateButton("ȷ��", 26, 98, 78, 35,$WS_GROUP)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
$Button2 = GUICtrlCreateButton("ȡ��", 146, 98, 78, 35)
$IPAddress1 = _GUICtrlIpAddress_Create($GUI_1, 32, 50, 185, 25)
_GUICtrlIpAddress_Set($IPAddress1, "192.168.2.0")
GUISetState(@SW_SHOW)


While 1
	$nMsg = GUIGetMsg()
	Select
		Case $nMsg = $GUI_EVENT_CLOSE
			  Exit
		  Case $nMsg = $Button1
			GUISetState(@SW_HIDE,$GUI_1)
			$IP = _GUICtrlIpAddress_Get($IPAddress1)
			_pingIP()
			_Upgrade();
			Exit 
		Case $nMsg = $Button2
			Exit
	EndSelect
WEnd

Func _pingIP()
Local $iPing = Ping($IP)
If $iPing = 0 Then
	WinClose($GUI_1)
	MsgBox(0,"����","��IP��ַ���Ӳ�ͨ")
	Exit
EndIf
EndFunc

Func _upgrade();����������
ShellExecute("putty.exe","","J:\")
WinWait("PuTTY ����")
ControlClick("PuTTY ����","","Edit1")
ControlSetText("PuTTY ����","","Edit1",$IP)
ControlClick("PuTTY ����","","Button1")
WinWait($IP & " - PuTTY")
WinActivate($IP & " - PuTTY")
 Dim $i=MsgBox(1,"ע��","�������ʺ�root������rayray���ڵ��ȷ��" & @CR &"�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
 Dim $i=MsgBox(1,"ע��","�븴�Ʒ����������ļ��������ֺ��ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
WinWait("root@localhost:~")
WinActivate("root@localhost:~")
Send("cd /home")
Send("{enter}")
WinActivate("root@localhost:/home")
Send("tar zxvf ")
 Dim $i=MsgBox(1,"ע��","���ڡ�root@localhost:/home����������������Ҽ����ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
WinActivate("root@localhost:/home")
Send("{enter}");RS_upgrade_pack
Dim $i=MsgBox(1,"ע��","���ڡ�root@localhost:/home�������������ȴ��ļ���ѹ����ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf

WinActivate("root@localhost:/home")
Send("cd ./RS_upgrade_pack")
Send("{enter}")
Sleep(2000)
Send("./RS_upgrade.sh /home/RS_upgrade_pack /home/RS_CMS_PC64")
Send("{enter}")
MsgBox(0,"ע��","��ȴ�������������ɺ��ڵ��ȷ��")
ProcessClose("putty.exe")
EndFunc