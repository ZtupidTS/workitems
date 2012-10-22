#include <GuiConstants.au3>
#include <WindowsConstants.au3>
#include <winapi.au3>
Global Const $SC_CLOSE = 0xF060
Local $ChildForm[1] = [0], $ChildBtn[1] = [0]

$MainForm = GUICreate("Main", 500, 500)
$menu = GUICtrlCreateMenu("����")
$new1 = GUICtrlCreateMenuItem("�½�", $menu)
$new2 = GUICtrlCreateMenuItem("�����½�", $menu)
GUICtrlCreateMenuItem("", $menu)
$mini = GUICtrlCreateMenuItem("ȫ����С��", $menu)
GUICtrlCreateMenuItem("", $menu)
$RESTORE = GUICtrlCreateMenuItem("ȫ����ԭ", $menu)
GUICtrlCreateMenuItem("", $menu)
$close = GUICtrlCreateMenuItem("ȫ���ر�", $menu)
GUISetState(@SW_SHOW, $MainForm)

GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")
GUIRegisterMsg($WM_SYSCOMMAND, "WM_SYSCOMMAND")

While 1
	Sleep(2500)
WEnd

Func WM_COMMAND($hWnd, $iMsg, $iwParam, $ilParam)
	$iControl = BitAND($iwParam, 0xFFFF)
	$iMsg = BitShift($iwParam, 16)
	Switch $iControl
		Case $new1;�½��Ӵ���
			_CreateChildForm()
		Case $new2;�����½��Ӵ���
			For $i = 0 To Random(3,10,1)
				_CreateChildForm()
			Next
		Case $close;�ر�ȫ���Ӵ���
			_CloseChildForm()
		Case $mini;��С��ȫ���Ӵ���
			For $i = 0 To UBound($ChildForm) - 1
				GUISetState(@SW_MINIMIZE, $ChildForm[$i])
			Next
		Case $RESTORE
			For $i = 0 To UBound($ChildForm) - 1
				GUISetState(@SW_RESTORE, $ChildForm[$i])
			Next
		Case Else;�Ӵ��ڰ�ť���
			For $i = 0 To UBound($ChildBtn) - 1
				If $iMsg = 0 And $iControl = $ChildBtn[$i] Then
					Return MsgBox(0,WinGetTitle($hWnd) & " ��ʾ", "����[" & $i & "]���ڡ�" & @CRLF & "�ҵľ����:" & $ChildForm[$i], 0, $ChildForm[$i])
				EndIf
			Next
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_COMMAND

Func WM_SYSCOMMAND($hWnd, $Msg, $wParam, $lParam)
	Local $iID = BitAND($wParam, 0x0000FFFF)
	Switch $iID
		Case $SC_CLOSE
			If $hWnd = $MainForm Then
				_CloseChildForm()
				Exit
			Else
				For $i = 0 To UBound($ChildForm) - 1
					If $ChildForm[$i] = $hWnd Then
						GUIDelete($ChildForm[$i])
						$ChildForm[$i] = 0
						ExitLoop
					EndIf
				Next
			EndIf
	EndSwitch
EndFunc   ;==>WM_SYSCOMMAND

Func _CreateChildForm()
	Local $j = 0
	For $i = 0 To UBound($ChildForm) - 1
		If Not IsHWnd($ChildForm[$i]) Then
			$j = $i
			ExitLoop
		EndIf
	Next
	If $j < 1 Then
		$j = $i
		ReDim $ChildForm[$j + 1]
		ReDim $ChildBtn[$j + 1]
	EndIf

	$ChildForm[$j] = GUICreate("Child" & $j, 200, 100, 10 + $j * 10, 10 + $j * 15, BitOR($WS_CHILD, $WS_MINIMIZEBOX, $WS_CAPTION, $WS_SYSMENU), -1, $MainForm)
	GUICtrlCreateLabel("�ҵľ����" & $ChildForm[$j], 10, 10, 200, 60)
	$ChildBtn[$j] = GUICtrlCreateButton("����", 10, 70, 75, 25)
	GUISetBkColor("0x" & Hex(Random(0, 255, 1), 2) & Hex(Random(0, 255, 1), 2) & Hex(Random(0, 255, 1), 2), $ChildForm[$j])
	_WinAPI_SetParent($ChildForm[$j], $MainForm)
	GUISetState(@SW_SHOW, $ChildForm[$j])
EndFunc

Func _CloseChildForm()
	For $i = 0 To UBound($ChildForm) - 1
		GUIDelete($ChildForm[$i])
		$ChildForm[$i] = 0
	Next
EndFunc