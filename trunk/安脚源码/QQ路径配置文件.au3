#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("QQ·�������ļ�", 307, 127, 187, 124)
$Input2 = GUICtrlCreateInput("", 120, 32, 169, 21)
$Button1 = GUICtrlCreateButton("ȷ��", 64, 72, 65, 25,$WS_GROUP)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
$Button2 = GUICtrlCreateButton("ȡ��", 188, 72, 65, 25)
$Label3 = GUICtrlCreateLabel("QQ·�������ļ�", 12, 36, 96, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
$nMsg = GUIGetMsg()
	Select 
		Case $nMsg = $GUI_EVENT_CLOSE
			Exit
		Case $nMsg = $Button2
			Exit
		Case $nMsg = $Button1
			csh()
			Exit
	EndSelect
WEnd

Func csh()
	IniWrite(@ScriptDir & "\QQPath.ini", "QQ·��", "QQPath", GUICtrlRead ($Input2)) 
EndFunc