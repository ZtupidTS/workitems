;~ ���������б��һ��˵��
;~ http://blog.vckbase.com/iwaswzq/archive/2006/07/07/21113.aspx

#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_UseX64=n
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <GuiImageList.au3>
#include <WindowsConstants.au3>

GUIRegisterMsg($WM_NOTIFY, "WM_NOTIFY")

Local $tText = DllStructCreate("char Text[261]");�����ṹ��������listview������
Local $GUI, $hImage, $iITEM_COUNT = 10000000

$hGUI = GUICreate("ListView�����б� ����[" & $iITEM_COUNT & "]����", 500, 300)
$hListView = GUICtrlCreateListView("Item1|nSubItem1|nSubItem2", 2, 2, 494, 294, $LVS_SHOWSELALWAYS + $LVS_OWNERDATA, $LVS_EX_GRIDLINES + $LVS_EX_FULLROWSELECT + $LVS_EX_DOUBLEBUFFER)
;�����п�
GUICtrlSendMsg($hListView, $LVM_SETCOLUMNWIDTH, 0, 150)
GUICtrlSendMsg($hListView, $LVM_SETCOLUMNWIDTH, 1, 150)
GUICtrlSendMsg($hListView, $LVM_SETCOLUMNWIDTH, 2, 150)

GUICtrlSendMsg($hListView, $LVM_SETITEMCOUNT, $iITEM_COUNT, 0);�����б��ڴ档 ΪʲôҪ����������Ϊ�����б����Ҫ֪����������

_GUICtrlListView_SetUnicodeFormat($hListView, False);����Ϊ ANSI �ַ�

;����������ͼ���б�
$hImage = _GUIImageList_Create()
_GUIImageList_AddIcon($hImage, @SystemDir & "\shell32.dll", 115)
_GUICtrlListView_SetImageList($hListView, $hImage, 1)
GUISetState()

Do
Until GUIGetMsg() = $GUI_EVENT_CLOSE
GUIDelete()

Func WM_NOTIFY($hWnd, $iMsg, $iwParam, $ilParam)
	#forceref $hWnd, $iMsg, $iwParam
	Local $hWndFrom, $iIDFrom, $iCode, $tNMHDR, $tInfo, $s

	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$hWndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")
	Switch $iIDFrom
		Case $hListView
			Switch $iCode
				Case - 150, -177 ;$LVN_GETDISPINFOA = -150, $LVN_GETDISPINFOW = -177
					$tInfo = DllStructCreate($tagNMLVDISPINFO, $ilParam)
					IF DllStructGetData($tInfo, "SubItem") THEN;����
						IF BitAND(DllStructGetData($tInfo, "Mask"), $LVIF_TEXT) Then ;�ַ�������
							IF DllStructGetData($tInfo, "SubItem") = 1 THEN;����1
								$s =  "nSubItem1_"
							ELSEIF DllStructGetData($tInfo, "SubItem") = 2 THEN;����2
								$s = "nSubItem2_"
							ENDIF
						ENDIF
					ELSE
						IF BitAND(DllStructGetData($tInfo, "Mask"), $LVIF_TEXT) Then ;�ַ�������
							$s = "nItem"
							IF BitAND(DllStructGetData($tInfo, "Mask"), $LVIF_IMAGE) THEN DllStructSetData($tInfo, "Image", 0);������ͼ��
;~ 							IF BitAND(DllStructGetData($tInfo, "Mask"), $LVIF_INDENT) THEN DllStructSetData($tInfo, "Indent", 0);����������
;~ 							IF BitAND(DllStructGetData($tInfo, "Mask"), $LVIF_STATE) THEN DllStructSetData($tInfo, "state", 0);������״̬
						ENDIF
					ENDIF
					$s &= DllStructGetData($tInfo, "Item")
					DllStructSetData($tText, 1, $s);�����ݷ���$tText�ṹ
					DllStructSetData($tInfo, "Text", DllStructGetPtr($tText));��$tText�ṹ��ָ��������������
					DllStructSetData($tInfo, "TextMax", StringLen($s));���������ݳ���
			Case - 113 ;$LVN_OCACHEHINT = -113
				;����  ��ûŪ��������
;~ 				Local $tInfo = DllStructCreate("hwnd hForm;int iForm;int iCode;int iFrom;int iTo", $ilParam)
;~ 				Local $iFrom = DllStructGetData($tInfo, "iFrom")
;~ 				Local $iTo = DllStructGetData($tInfo, "iTo")
;~ 				ConsoleWrite('chache: from ' & $iFrom & ' to ' & $iTo & @CRLF)
			Case -152, -179; $LVN_ODFINDITEM = -152, $LVN_ODFINDITEMW = -179
				;���� ��ûŪ���������ô���
;~ 				$tInfo = DllStructCreate($tagNMLVFINDITEM, $ilParam)
;~ 				If Not BitAND(DllStructGetData($tInfo, "Flags"), $LVFI_STRING) Then Return
;~ 				Local $iStartPos = DllStructGetData($tInfo, "Start") ;���ҵ���ʼλ��
;~ 				If $iStartPos >= GUICtrlSendMsg($hListView, $LVM_GETITEMCOUNT, 0, 0) Then $iStartPos = 0 ;�ж��Ƿ������һ��
;~ 				Local $iResult = -1,$iCurrentPos = $iStartPos
;~ 				Local $sSearch = _GUICtrlListView_GetISearchString($hListView)
;~ 				Local $iSearch = StringLen($sSearch)
;~ 				ToolTip($sSearch)
			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_NOTIFY
