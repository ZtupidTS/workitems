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
;#include<MsgBoxDJS.au3>
#Include <GuiTreeView.au3>
HotKeySet("{ESC}", "Terminate")
HotKeySet("{F2}", "Togglepause")

Local $Paused ,$h

WinActivate("RVMSƽ̨-���ؿͻ���")
$1= ControlGetHandle("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322");��ȡ�����б�ؼ����
$hItem = _GUICtrlTreeView_FindItem($1, '�麣��',True)
msgbox(0,0,_GUICtrlTreeView_Gettext($1, $hItem))
;$index = _GUICtrlTreeView_Index($1, $hItem)
;msgbox(0,0,$index)

$2=_GUICtrlTreeView_GetText($1)
$3=_GUICtrlTreeView_GetTree($1,$2)
;$3=ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322","Getcount",'universice|item1')
;$3=ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322","Gettext",1)
;MsgBox(0,0,$3)
;~ ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2)
;~ ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|181")
;~ ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Check",  $2 & "|181" & "|CH02")

 
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



