#Include <GuiTab.au3>
#include <GuiListView.au3>
#Include <GuiComboBox.au3>
#Include <GuiTreeView.au3>

Local $Paused

HotKeySet("{F4}", "Terminate")
HotKeySet("{F2}", "Togglepause")


;D9108 ��
$DVR = IniRead(@ScriptDir & "\ptpz.ini", "DVR����", "DVR·��","")
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ|�麣��")
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
Send($DVR)
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000003")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 1, "left", True, 1)



WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send($DVR & "01")


$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
$j=2
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send($DVR)
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7


;D9108B ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send($DVR)
Send("09")

ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")

$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")


$j=10
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send($DVR)
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7



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