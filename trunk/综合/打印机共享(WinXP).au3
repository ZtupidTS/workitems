#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=E:\����\�ۺ����\3D���ICOͼ��\limewirexx.ico
#AutoIt3Wrapper_outfile=��ӡ������(win7).exe
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiIPAddress.au3>
#include <Process.au3>
#include <WindowsConstants.au3>
#include <WindowsConstants.au3>
$GUI_1 = GUICreate("��ӡ�������ַ", 251, 106, 192, 125)
$Button1 = GUICtrlCreateButton("ȷ��", 50, 58, 150, 35,$WS_GROUP)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
$IPAddress1 = _GUICtrlIpAddress_Create($GUI_1, 32, 16, 185, 25)
_GUICtrlIpAddress_Set($IPAddress1, "172.18.6.7")
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Select
		Case $nMsg = $GUI_EVENT_CLOSE
			Exit
		Case $nMsg = $Button1
			$T = _GUICtrlIpAddress_Get($IPAddress1)
			$I = "\\"
			$H =$I & $T
			ShellExecute($H )
			GUISetState(@SW_HIDE)
			ExitLoop
			;Exit 
	EndSelect
WEnd
WinWaitActive ("\\172.18.6.7","")
Send("{space}")
Send("{enter}")
WinWaitActive ("���ӵ���ӡ��","��(&Y)")
If WinExists("���ӵ���ӡ��","��(&Y)") Then
    ControlClick("���ӵ���ӡ��","","Button1")
Else
	WinClose("172.18.6.7 �� �� HP LaserJet 1020 ���ڳ�ʼ��")
	WinClose("\\172.18.6.7")
    Exit	
EndIf

WinWait("172.18.6.7 �� �� HP LaserJet 1020 ���ڳ�ʼ��")
MsgBox("","",1)
WinActivate("172.18.6.7 �� �� HP LaserJet 1020 ���ڳ�ʼ��")
Send("!p")
Send("{down}")
Send("{enter}")
WinClose("\\172.18.6.7","")
WinClose("172.18.6.7 �� �� HP LaserJet 1020 ���ڳ�ʼ��")