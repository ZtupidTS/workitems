#Include <GuiTab.au3>
#include <GuiListView.au3>
#Include <GuiComboBox.au3>
#Include <GuiTreeView.au3>

Local $Paused 

HotKeySet("{F4}", "Terminate")
HotKeySet("{F2}", "Togglepause")


;������
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
;ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
;ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ|�麣��")
$2 =_GUICtrlTreeView_FindItem($1, "�麣��")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


ControlClick("RVMSƽ̨--�����","�豸����","Button35")

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("������")
ControlClick("����豸��Ϣ","","ComboBox2","left",2)
Send("{down 2}")
Sleep(500)
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000001")

;~  $SBLX = ControlGetHandle ("����豸��Ϣ","","ComboBox2")
;~ _GUICtrlComboBox_SetCurSel($SBLX,2)
;~ $1=_GUICtrlComboBox_GetMinVisible($SBLX)


ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

 $hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 1, "left", True, 1)



WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("8����")


 $FP = ControlGetHandle ("���ͨ��","","ComboBox3")
_GUICtrlComboBox_SetCurSel($FP,3)
ControlClick( "���ͨ��", "ȷ��", "Button1")

WinActivate("RVMSƽ̨--�����")
 $hListView5=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView5, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("9����")


 $FP = ControlGetHandle ("���ͨ��","","ComboBox3")
_GUICtrlComboBox_SetCurSel($FP,4)
ControlClick( "���ͨ��", "ȷ��", "Button1")


Func Terminate()
	Exit 0
EndFunc

Func Togglepause()
    $Paused = NOT $Paused 
	
   While $Paused 
	tooltip("��ͣһ��",0,0)
	sleep(100)
   tooltip("")
   WEnd
EndFunc