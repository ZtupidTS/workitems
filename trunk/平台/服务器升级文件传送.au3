#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=J:\WinSCP\WinSCP.exe
#PRE_Outfile=C:\Users\chtyfox\Desktop\�����������ļ�����.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=3.1.0.0
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
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiIPAddress.au3>
#include <Process.au3>
#include <WindowsConstants.au3>
#Include <GuiTreeView.au3>
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
			_filesend()
			Exit 
		Case $nMsg = $Button2
			Exit
	EndSelect
WEnd



Func _filesend()
 Local $iPing = Ping($IP)
If $iPing = 0 Then
	WinClose($GUI_1)
	MsgBox(0,"����","��IP��ַ���Ӳ�ͨ")
	Exit
EndIf	
ShellExecute("WinSCP.exe","","J:\WinSCP")
WinWait("WinSCP ��¼")
ControlClick("WinSCP ��¼", "�½�(&N)", "TButton6")
WinWait("WinSCP ��¼","����(&S)...")
ControlClick("WinSCP ��¼", "", "TEdit3")
ControlSetText("WinSCP ��¼","","TEdit3",$IP)
ControlClick("WinSCP ��¼", "", "TEdit2")
ControlSetText("WinSCP ��¼","","TEdit2","root")
ControlClick("WinSCP ��¼", "", "TPasswordEdit1")
ControlSetText("WinSCP ��¼","","TPasswordEdit1","rayray")
ControlClick("WinSCP ��¼", "��¼", "TButton14")
WinWait("root - root@" & $IP & " - WinSCP")
WinActivate("root - root@192.168.2.123 - WinSCP")
Send("^o")
WinWait("��Ŀ¼")
ControlClick("��Ŀ¼", "", "Edit1")
ControlSetText("��Ŀ¼", "", "Edit1","/home")
ControlClick("��Ŀ¼", "", "TButton7")
;~ Send("{enter}")
;~ WinWait("/ - root@" & $IP & " - WinSCP")
;~ WinActivate("/ - root@" & $IP & " - WinSCP")
;~ Send("h")
;~ Send("{enter}")
 Dim $i=MsgBox(1,"ע��","���Ҫ�������ļ�������һ�º���ȷ��" & @CR &"�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("WinSCP.exe")
    Exit 
EndIf
WinActivate("home - root@" & $IP & " - WinSCP")
ControlClick("home - root@" & $IP & " - WinSCP","","TPanel3")
Send("^v")
WinWait("����")
ControlClick("����","","TButton4")
MsgBox(0,"ע��","��ȴ��ļ�������ɺ��ڵ��ȷ��")
ProcessClose("WinSCP.exe")
EndFunc	

#cs
ShellExecute("WinSCP.exe","","J:\WinSCP")
WinWait("WinSCP ��¼")
ControlClick("WinSCP ��¼", "", "TButton6")
$1= ControlGetHandle("WinSCP ��¼", "", "TTreeView2");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "root@192.168.2.123")
_GUICtrlTreeView_ClickItem($1,$2,"left",True);��������б���Ŀ
Sleep(500)
ControlClick("WinSCP ��¼","��¼","TButton14")
#ce