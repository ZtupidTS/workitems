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
$2=_GUICtrlTreeView_GetText($1)
;��$3-$5Ϊ��ȡ�¼����ε��ı�
$3=_GUICtrlTreeView_GetItemHandle($1,0);������Ŀ���
$4=_GUICtrlTreeView_GetFirstChild($1, $3);����ָ����Ŀ�ĵ�һ������
$5=_GUICtrlTreeView_Gettext($1,$4 );������Ŀ�ı�
;�麣
$6=_GUICtrlTreeView_GetFirstChild($1, $4);����ָ����Ŀ�ĵ�һ������
$7=_GUICtrlTreeView_Gettext($1, $6)
;�����豸
$8=_GUICtrlTreeView_GetFirstChild($1, $6);����ָ����Ŀ�ĵ�һ������
$9=_GUICtrlTreeView_Gettext($1, $8)
;���ػ������
$10=_GUICtrlTreeView_GetFirstChild($1, $8);����ָ����Ŀ�ĵ�һ������
$11=_GUICtrlTreeView_Gettext($1, $10)
;��ص�
$12=_GUICtrlTreeView_GetFirstChild($1, $10);����ָ����Ŀ�ĵ�һ������
$13=_GUICtrlTreeView_Gettext($1, $12)
;����
$14=_GUICtrlTreeView_GetNextChild($1, $6);����ָ����Ŀ�ĵ�һ������
$15=_GUICtrlTreeView_Gettext($1, $14)
;����ʡ
$16 = _GUICtrlTreeView_GetNextChild($1, $4);����ָ����Ŀ�ĵ�һ������
$17=_GUICtrlTreeView_Gettext($1,$16)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|" & $5)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|" & $5 & "|" & $7)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|" & $5 & "|" & $7 & "|" & $9)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|" & $5 & "|" & $7 & "|" & $9 & "|" & $11)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Expand", $2 & "|" & $5 & "|" & $7 & "|" & $9 & "|" & $11 & "|" & $13)
ControlTreeView ("RVMSƽ̨-���ؿͻ���", "", "SysTreeView322", "Check",  $2 & "|" & $5 & "|" & $7 & "|" & $9 & "|" & $11 & "|" & $13 & "|" & "CZM01")

 
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



