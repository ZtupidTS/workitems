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

$i = 0
Do
WinActivate("Video surveillance client")
$1= ControlGetHandle("Video surveillance client", "", "SysTreeView321");��ȡ�����б�ؼ����

ControlTreeView ("Video surveillance client", "", "SysTreeView321", "Expand", "Device list(1/1)")
ControlTreeView ("Video surveillance client", "", "SysTreeView321", "Expand", "Device list(1/1)|181")
$2 =_GUICtrlTreeView_FindItem($1, "181")
;$2=_GUICtrlTreeView_FindItemEx($1, "�麣��|D9616L (17/17)|��ص� (17/17)|1001");�ҵ�Ҫ��������ε� ��|����Ŀ������ 1|2,���ǻ�ȡ��Ŀ���
_GUICtrlTreeView_ClickItem($1,$2,"right",True,1,2);��������б���Ŀ
Send("{down 4}")
Sleep(1000)
Send("{enter}")
Sleep(1000)
$2 =_GUICtrlTreeView_FindItem($1, "181")
;$2=_GUICtrlTreeView_FindItemEx($1, "�麣��|D9616L (17/17)|��ص� (17/17)|1001");�ҵ�Ҫ��������ε� ��|����Ŀ������ 1|2,���ǻ�ȡ��Ŀ���
_GUICtrlTreeView_ClickItem($1,$2,"right",True,1,2);��������б���Ŀ
Send("{down 5}")
Send("{enter}")

;~ WinWait("Remote Setup(125.89.62.181)")
;~ Sleep(1000)
;~ WinClose("Remote Setup(125.89.62.181)")

;$msg = MsgBoxDJS(0 + 48 + 4, '�����Ƿ�ȫ������', '����ȫ��ʵ������ȷ����' & @CRLF & '�Ƿ������', 5, 2)
$i = $i + 1
Until $i = 100



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
;	ControlTreeView ("Video surveillance client", "", "SysTreeView325", "Select", "�麣��|D9616L (17/17)|��ص� (17/17)")
;ElseIf 	$4 = True  Then
;$2=_GUICtrlTreeView_FindItemEx($1, "�麣��|D9616L (17/17)|��ص� (17/17)|1001");�ҵ�Ҫ��������ε� ��|����Ŀ������ 1|2,���ǻ�ȡ��Ŀ���
;_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ


;EndIf