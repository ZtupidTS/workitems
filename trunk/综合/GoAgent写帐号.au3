#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=GoAgentCT V1.4 001.ico
#PRE_Outfile=GoAgentд�ʺ�.exe
#PRE_UseUpx=n
#PRE_Res_requestedExecutionLevel=None
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiIPAddress.au3>
#include <Process.au3>
#include <APIConstants.au3>
#include <GuiButton.au3>
#include <WindowsConstants.au3>
#include <GuiConstants.au3>

Global  $appid1 = " zhqf2001|zhqf2002|zhqf2003|zhqf2004|zhqf2005|zhqf2007|zhqf2008|zhqf2009|zhqf2010|zhqf2011|"
Global  $appid2 = "xz00311|xz0031140|xiaozhan40|xiaozhan5201314|5201314xiaozhan|xiaozhan0031140|xiaozhanliyu|"
Global  $appid3 = "xiaozhanjiaming|liyuning5201314|xiaozhanliyuning"
Global  $appid =  $appid1 & $appid2 & $appid3
;MsgBox(1,"1",$appid1)
Global $MARk_1     = 0
Global $DEFAULTINPUTDATA_1   = "���������������"
Global $NONEAACTIVECOLOR    = 0x989898
$GUI_1 = GUICreate("GoAgentд�ʺ�", 251, 106, 192, 125)
$Button1 = GUICtrlCreateButton("ȷ��", 50, 58, 150, 35,$WS_GROUP)
$Input1 = GUICtrlCreateInput($DEFAULTINPUTDATA_1, 32, 16, 185, 25)
GUICtrlSetColor(-1, $NONEAACTIVECOLOR)
;~ $lujing = GUICtrlCreateInput("", 32, 16, 185, 25)
;~ _GUICtrlButton_SetText($lujing, "123")
GUISetState(@SW_SHOW)

While 1
	_CheckInput($GUI_1, $Input1, "���������������", $DEFAULTINPUTDATA_1, $MARK_1)
	$nMsg = GUIGetMsg()
	Select
		Case $nMsg = $GUI_EVENT_CLOSE
			Exit
		Case $nMsg = $Button1
			$1 = IniWrite(GUICtrlRead($Input1) & "\proxy.ini", "gae","appid",$appid)
			MsgBox(1,"1",$1)
			;Exit 
	EndSelect
WEnd
	
Func _CheckInput($hWnd, $ID, $InputDefText, ByRef $DefaultInputData, ByRef $Mark)
    If $Mark = 0 And _IsFocused($hWnd, $ID) And $DefaultInputData = $InputDefText Then
        $Mark = 1
        GUICtrlSetData($ID, "")
        GUICtrlSetColor($ID, 0x000000)
        $DefaultInputData = ""
    ElseIf $Mark = 1 And Not _IsFocused($hWnd, $ID) And $DefaultInputData = "" And GUICtrlRead($ID) = "" Then
        $Mark = 0
        $DefaultInputData = $InputDefText
        GUICtrlSetData($ID, $DefaultInputData)
        GUICtrlSetColor($ID, $NONEAACTIVECOLOR)
    EndIf
EndFunc

Func _IsFocused($hWnd, $nCID)
    Return ControlGetHandle($hWnd, '', $nCID) = ControlGetHandle($hWnd, '', ControlGetFocus($hWnd))
EndFunc