#region ACNԤ����������(���ò���)
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
#endregion ACNԤ����������(���ò���)
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
	
	Au3 �汾:
	�ű�����:
	�����ʼ�:
	QQ/TM:
	�ű��汾:
	�ű�����:
	
#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <TreeViewConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiTreeView.au3>

Dim $Item1[10], $Item2[10], $Item3[10]
;Local $treeview, $generalitem, $displayitem, $aboutitem, $compitem
;Local $useritem, $resitem, $otheritem, $startlabel, $aboutlabel, $compinfo
;Local $togglebutton, $infobutton, $statebutton, $cancelbutton
;Local $msg, $item, $hItem, $text


#region ### START Koda GUI section ### Form=E:\AU3 study\�����������\Demo\������\Form1.kxf
$FrmTree = GUICreate("����ѯ", 169, 347, 614, 246, -1, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE))
$TreeView= GUICtrlCreateTreeView(8, 8, 153, 329)
addTree()
GUISetState(@SW_SHOW)
GUIRegisterMsg($WM_NOTIFY, 'MY_WM')
#endregion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

Func addTree()
	For $i = 0 To 4
		$Item1[$i] = GUICtrlCreateTreeViewItem(StringFormat("[%02d] үү", $i), $treeview)
		For $j = 0 To 5
			$Item2[$j] = GUICtrlCreateTreeViewItem(StringFormat("[%02d] �ְ�", $j), $Item1[$i])
			For $k = 0 To 5
				GUICtrlCreateTreeViewItem(StringFormat("[%02d] ����", $k), $Item2[$j])
			Next
		Next
	Next
EndFunc   ;==>addTree

Func MY_WM($hWnd, $msg, $wParam, $lParam)
	Local $tNMHdr = DllStructCreate($tagNMHDR, $lParam), $tNM_TREEVIEW
	Local $hWndFrom = DllStructGetData($tNMHdr, 'hWndFrom')
	Local $iIDFrom = DllStructGetData($tNMHdr, 'IDFrom')
	Local $iCode = DllStructGetData($tNMHdr, 'Code')

	If $iIDFrom = $treeview Then
		Switch $iCode
			Case $TVN_SELCHANGEDA, $TVN_SELCHANGEDW
				If GUICtrlRead($treeview) > 0 Then
					$ID1=Number(GUICtrlRead($treeview))
					
					$Text1=GUICtrlRead($treeview, 1)
					$Parent= _GUICtrlTreeView_GetParentParam($treeview,$ID1)
					$ParentName= _GUICtrlTreeView_GetText($treeview,$Parent)
					$Parent2= _GUICtrlTreeView_GetParentParam($treeview,$Parent)
					$ParentName2= _GUICtrlTreeView_GetText($treeview,$Parent2)
					MsgBox(0, 0, 'ID:   ' & $ID1& @CRLF & 'Text:   ' & $Text1&@CRLF&"Parent��   "&$Parent&$ParentName&@CRLF&"Parent2��  "&$Parent2&$ParentName2)
					
				EndIf
		EndSwitch
	EndIf

	Return $GUI_RUNDEFMSG
EndFunc   ;==>MY_WM


