#Region ACNԤ����������(���ò���)
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
#EndRegion ACNԤ�����������������
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

 Au3 �汾: 
 �ű�����: 
 �����ʼ�: 
	QQ/TM: 
 �ű��汾: 
 �ű�����: 

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
#include <GuiListView.au3>
#Include <GuiTreeView.au3>
#Include <GuiTab.au3>
Local $Paused

HotKeySet("{ESC}", "Terminate")
HotKeySet("{F2}", "Togglepause")


;��������б�universeѡ��״̬
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ
Sleep(1000)

;----------------------------------��������---------------------------------------
;��������
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","��������","Button34")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
ControlClick( "RVMSƽ̨--�����", "", "SysListView3229","right",1,1429, 207)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("�㶫ʡ")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)
$hListView1 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3229")
_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("����ʡ")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")

;----------------------------------------------------------------------------------------------------
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "�㶫ʡ")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ
Sleep(1000)

$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
ControlClick( "RVMSƽ̨--�����", "", "SysListView3229","right",1,1429, 207)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("�麣��")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)
$hListView1 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3229")
_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("������")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)

_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("��ͷ��")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)

_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("������")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)

_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("������")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)

_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("��ݸ��")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)

;---------------------------------------------------------------------------------------------
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "�麣��")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ
Sleep(1000)

$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
ControlClick( "RVMSƽ̨--�����", "", "SysListView3229","right",1,1429, 207)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("������")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)
$hListView1 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3229")
_GUICtrlListView_ClickItem($hListView1, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӻ�����Ϣ")
ControlClick("��ӻ�����Ϣ","","Edit1")
Send("������")
ControlClick("��ӻ�����Ϣ","ȷ��","Button1")
Sleep(1000)


;����Ա����
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ
Sleep(1000)

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 1, "left", True, 1)
Sleep(1000)

$hListView2 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3228")
_GUICtrlListView_ClickItem($hListView2, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӹ���Ա")
ControlClick("��ӹ���Ա","","Edit1")
Send("1")
ControlClick("��ӹ���Ա","","Edit2")
Send("1")
ControlClick("��ӹ���Ա","��������Ա","Button1")
ControlClick("��ӹ���Ա","ȷ��","Button2")
Sleep(1000)

_GUICtrlListView_ClickItem($hListView2, 0, "right", True, 1)
Send("{down}")
Send("{enter}")
WinWait("��ӹ���Ա")
ControlClick("��ӹ���Ա","","Edit1")
Send("chtybox")
ControlClick("��ӹ���Ա","","Edit2")
Send("1")
ControlClick("��ӹ���Ա","��������Ա","Button1")
ControlClick("��ӹ���Ա","ȷ��","Button2")

;-------------------------------------����������-----------------------------------------------------------------
;ת��������
WinActivate("RVMSƽ̨--�����")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ
Sleep(1000)

ControlClick("RVMSƽ̨--�����","����������","Button41")
WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3226","right",1,1325, 160)
Send("{down}")
Send("{enter}")

WinWait("���MTDU��Ϣ")
ControlClick("���MTDU��Ϣ","","Edit1")
Send("ת��������")
;ControlClick("���MTDU��Ϣ","","Edit2")
;Send("100002")
ControlClick("���MTDU��Ϣ","ȷ��","Button1")
Sleep(1000)

$hListView3=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3226")
_GUICtrlListView_ClickItem($hListView3, 0, "left", True, 1)

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3227","right",1,991, 215)

Send("{down}")
Send("{enter}")

WinWait("·����Ϣ")
ControlClick("·����Ϣ","","Edit1")
Send("192.168.1.200")
ControlClick("·����Ϣ","","Edit2")
Send("192.168.1.200")
ControlClick("·����Ϣ","ȷ��","Button1")
Sleep(1000)

;¼�������
WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl327")
_GUICtrlTab_ClickTab($hTab, 1, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3224","right",1,1235, 803)
Send("{down}")
Send("{enter}")

WinWait("���MSU��Ϣ")
ControlClick("���MSU��Ϣ","","Edit1")
Send("¼�������")
ControlClick("���MSU��Ϣ","ȷ��","Button1")
Sleep(1000)

;---------------------------------�豸����-------------------------------------------
;�豸����
;�㶫ʡ
;D9104B ��
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "�豸����", "Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "�㶫ʡ")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9104B")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000002")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9104B01")


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
Send("D9104B")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 3


;D9104B ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9104B")
Send("0")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 4
;-------------------------------------------------------------------------------------------------------------
;�麣
;D9108 ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ|�麣��")
$2 =_GUICtrlTreeView_FindItem($1, "�麣��")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9108")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000003")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)



WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D910801")


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
Send("D9108")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7


;D9108 ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9108")
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
Send("D9108")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7
;--------------------------------------------------------------------------------------------------
;�麣����
;D9108B ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ|�麣��")
$2 =_GUICtrlTreeView_FindItem($1, "������")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ



WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9108B")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000004")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9108B01")


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
Send("D9108B")
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
Send("D9108B")
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
Send("D9108B")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;-------------------------------------------------------------------------------------------------------------
;�麣�㶷��
;D9604L ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ|�麣��")
$2 =_GUICtrlTreeView_FindItem($1, "������")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9604L")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000005")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9604L01")


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
Send("D9604L")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 3


;D9604L ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9604L")
Send("0")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 4

;--------------------------------------------------------------------------------------------------------------
;������
;D9604B ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "������")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ



WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9604B")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000006")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9604B01")


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
Send("D9604B")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 3


;D9604B ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9604B")
Send("0")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 4

;-------------------------------------------------------------------------------------------------
;��ͷ��
;D9608L ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "��ͷ��")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9608L")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000007")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9608L01")


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
Send("D9608L")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7


;D9608L ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9608L")
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
Send("D9608L")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;----------------------------------------------------------------------------------------------
;������
;D9216H ��
WinActivate("RVMSƽ̨--�����")

ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "������")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9216H")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000008")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)


;ͨ��
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9216H01")


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
Send("D9216H")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9216H")
Send("09")
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
Send("D9216H")
Send($j)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;D9216H ��

$j=17
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9216H")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 16

;-------------------------------------------------------------------------------------------------------------
;������
;D9316H ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "������")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ



WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9316H")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000009")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)


;ͨ��
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9316H01")


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
Send("D9316H")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9316H")
Send("09")
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
Send("D9316H")
Send($j)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;D9216H ��

$j=17
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9316H")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 16

;-------------------------------------------------------------------------------------------------
;��ݸ��
;D9104 ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "��ݸ��")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9104")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000001")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)

;ͨ��

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D910401")


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
Send("D9104")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 3


;D9104 ��
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9104")
Send("0")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 4

;-------------------------------------------------------------------------------------------------
;����ʡ
;D9616L ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "����ʡ")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ



WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9616L")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000010")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 0, "left", True, 1)


;ͨ��
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9616L01")


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
Send("D9616L")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9616L")
Send("09")
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
Send("D9616L")
Send($j)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;D9616L ��
$j=17
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9616L")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 16

;---------------------------------------------------------------
;D9616L ��
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","�豸����","Button35")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "����ʡ")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ



WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl325")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3222","right",1,1608, 117)
Send("{down}")
Send("{enter}")
WinWait("����豸��Ϣ")
ControlClick( "����豸��Ϣ", "", "Edit1")
Send("D9016H")
ControlClick( "����豸��Ϣ", "", "Edit2")
Send("000000000000000011")
ControlClick( "����豸��Ϣ", "ȷ��", "Button3")

$hListView4=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3222")
_GUICtrlListView_ClickItem($hListView4, 1, "left", True, 1)


;ͨ��
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "", "SysListView3223","right",1,1608, 117)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9016H01")


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
Send("D9016H")
Send("0")
Send($j)
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9016H")
Send("09")
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
Send("D9016H")
Send($j)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 7

;D9016H ��
$j=17
$i = 0
Do
	WinActivate("RVMSƽ̨--�����")
$hListView6 = ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3223")
_GUICtrlListView_ClickItem($hListView6, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("���ͨ��")
ControlClick( "���ͨ��", "", "Edit2")
Send("D9016H")
Send($j)
ControlClick("���ͨ��","","ComboBox1","left",2)
Send("{down}")
$hListView5 = ControlGetHandle ( "���ͨ��", "List1", "SysListView321")
 _GUICtrlListView_SetItemChecked($hListView5, 0)
ControlClick( "���ͨ��", "ȷ��", "Button1")
         $j=$j+1
    $i = $i + 1
Until $i = 16


;---------------------ҵ�����-----------------------------------------------
;�û�����
WinActivate("RVMSƽ̨--�����")
ControlClick("RVMSƽ̨--�����","ͨ������","Button36")
$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe|�㶫ʡ")
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2);��������б���Ŀ

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl322")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)
Sleep(1000)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3210","right",1,339, 689)
Send("{down}")
Send("{enter}")
WinWait("�ͻ���Ϣ")
ControlClick( "�ͻ���Ϣ", "", "Edit1")
Send("LK")
ControlClick( "�ͻ���Ϣ", "", "Edit2")
Send("����")
ControlClick( "�ͻ���Ϣ", "ȷ��", "Button5")

;�û�1
WinActivate("RVMSƽ̨--�����")
$hListView7=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3210")
_GUICtrlListView_ClickItem($hListView7, 0, "left", True, 1)

ControlClick( "RVMSƽ̨--�����", "", "SysListView3211","right",1,674, 711)
Send("{down}")
Send("{enter}")

WinWait("����û�")
ControlClick( "����û�", "", "Edit1")
Send("1");username
ControlClick( "����û�", "", "Edit2")
Send("1");password
ControlClick( "����û�", "", "Button1")
ControlClick( "����û�", "", "Button4")
ControlClick( "����û�", "", "Edit4","left",2)
Send("0")
ControlClick( "����û�", "", "Button6")

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl321")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)

WinActivate("����û�")
ControlTreeView ("����û�", "Tree1", "SysTreeView326", "Check", "universe")
ControlClick( "����û�", "", "Button13")
Sleep(1000)
ControlClick( "����û�", "����", "Button29")
Sleep(1000)
ControlClick( "����û�", "�˳�", "Button7")

;�û�2
$hListView8=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3211")
_GUICtrlListView_ClickItem($hListView8, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("����û�")
ControlClick( "����û�", "", "Edit1")
Send("chtybox");username
ControlClick( "����û�", "", "Edit2")
Send("1");password
ControlClick( "����û�", "", "Button1")
ControlClick( "����û�", "", "Button4")
ControlClick( "����û�", "", "Edit4","left",2)
Send("0")
ControlClick( "����û�", "", "Button6")

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl321")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)

WinActivate("����û�")
ControlTreeView ("����û�", "Tree1", "SysTreeView326", "Check", "universe")
ControlClick( "����û�", "", "Button13")
Sleep(1000)
ControlClick( "����û�", "����", "Button29")
Sleep(1000)
ControlClick( "����û�", "�˳�", "Button7")

;�û�3
$hListView8=ControlGetHandle ( "RVMSƽ̨--�����", "List1", "SysListView3211")
_GUICtrlListView_ClickItem($hListView8, 0, "right", True, 1)
Send("{down}")
Send("{enter}")

WinWait("����û�")
ControlClick( "����û�", "", "Edit1")
Send("xiao");username
ControlClick( "����û�", "", "Edit2")
Send("1");password
ControlClick( "����û�", "", "Button1")
ControlClick( "����û�", "", "Button4")
ControlClick( "����û�", "", "Edit4","left",2)
Send("0")
ControlClick( "����û�", "", "Button6")

WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl321")
_GUICtrlTab_ClickTab($hTab, 0, "left", True, 1)

WinActivate("����û�")
ControlTreeView ("����û�", "Tree1", "SysTreeView326", "Check", "universe")
ControlClick( "����û�", "", "Button13")
Sleep(1000)
ControlClick( "����û�", "����", "Button29")
Sleep(1000)
ControlClick( "����û�", "�˳�", "Button7")

;-----------------------------------------------------------------------------------------
;¼�����
WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl322")
_GUICtrlTab_ClickTab($hTab, 1, "left", True, 1)

$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ

;----------------------------------------------------------------------------------------------------
;9104B
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9104B0" & $k)
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9104B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9104B0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8


;----------------------------------------------------------------------------------------------------
;9108

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D91080" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D91080" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D910809" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D910809|¼�������")

$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;9108B

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B0" & $k & "|¼�������")
   
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B09|¼�������")
$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9604L
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9604L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9604L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9604B
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9604B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9604B0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9608L

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L09|¼�������")
$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9216H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9316H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9104
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D91040" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D91040" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9616L

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9016H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H0" & $k & "|¼�������")
   
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H" & $k & "|¼�������")
     
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;��ʱ¼��
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9104B01")
  $1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321")
   $2 =_GUICtrlTreeView_FindItem($1, "¼�������")
  _GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2)
  
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button15")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button16")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button17")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button18")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button27")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button19")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button20")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button21")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button22")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button28")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")
ControlClick( "RVMSƽ̨--�����", "ȷ��", "Button29")

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
