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
;#include<MsgBoxDJS.au3>
#Include <GuiTreeView.au3>
HotKeySet("{ESC}", "Terminate")
HotKeySet("{F2}", "Togglepause")

Local $Paused ,$h
WinActivate("CMSƽ̨--CU�ͻ���")
$1= ControlGetHandle("CMSƽ̨--CU�ͻ���", "", "SysTreeView325");��ȡ�����б�ؼ����
;$3=_GUICtrlTreeView_GetItemHandle($1)
;$4=_GUICtrlTreeView_GetExpanded($1, $3)

ControlTreeView ("CMSƽ̨--CU�ͻ���", "", "SysTreeView325", "Expand", "�麣��")
ControlTreeView ("CMSƽ̨--CU�ͻ���", "", "SysTreeView325", "Expand", "�麣��|D9616L (17/17)")
ControlTreeView ("CMSƽ̨--CU�ͻ���", "", "SysTreeView325", "Expand", "�麣��|D9616L (17/17)|��ص� (17/17)")
$2 =_GUICtrlTreeView_FindItem($1, "1001")
;$2=_GUICtrlTreeView_FindItemEx($1, "�麣��|D9616L (17/17)|��ص� (17/17)|1001");�ҵ�Ҫ��������ε� ��|����Ŀ������ 1|2,���ǻ�ȡ��Ŀ���
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


;$msg = MsgBoxDJS(0 + 48 + 4, '�����Ƿ�ȫ������', '����ȫ��ʵ������ȷ����' & @CRLF & '�Ƿ������', 5, 2)


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



;If $4 = False Then
;	ControlTreeView ("CMSƽ̨--CU�ͻ���", "", "SysTreeView325", "Select", "�麣��|D9616L (17/17)|��ص� (17/17)")
;ElseIf 	$4 = True  Then
;$2=_GUICtrlTreeView_FindItemEx($1, "�麣��|D9616L (17/17)|��ص� (17/17)|1001");�ҵ�Ҫ��������ε� ��|����Ŀ������ 1|2,���ǻ�ȡ��Ŀ���
;_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


;EndIf