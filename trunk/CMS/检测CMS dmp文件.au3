#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_icon=C:\Windows\system32\SHELL32.dll|-269
#PRE_Outfile=C:\Users\chtyfox\Desktop\���CMS dmp�ļ�.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=2.3.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=Сվ����
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#Region ACNԤ����������(���ò���)
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
#include <GuiTreeView.au3>
 Local $i = 1
While $i >= 0
    If FileExists ( "C:\Program Files\DVR Soft\DvrClient\RsDvrClient.dmp" ) Then
		FileMove("C:\Program Files\DVR Soft\DvrClient\RsDvrClient.dmp","C:\Users\chty\Desktop\BUG�ļ�\RsDvrClient" & $i & ".dmp")
		FileCopy("C:\Program Files\DVR Soft\DvrClient\DvrClient.exe","C:\Users\chty\Desktop\BUG�ļ�\DvrClient" & $i & ".exe")
			$i= $i+1
			DvrClient()
	EndIf
	Sleep(120*1000)
WEnd

Func DvrClient()
If ProcessExists ("DvrClient.exe") then
	ProcessClose("DvrClient.exe") 
EndIf	
ShellExecute("DvrClient.exe","","C:\Program Files\DVR Soft\DvrClient")
WinWait("User Login")
ControlClick("User Login","","Edit2")
ControlSetText("User Login","","Edit2","1")
ControlClick("User Login","","Button2")
WinWait("Video surveillance client")
WinActivate("Video surveillance client")
$1= ControlGetHandle("Video surveillance client", "", "SysTreeView322");��ȡ�����б�ؼ����
$2=_GUICtrlTreeView_GetText($1)
ControlTreeView ("Video surveillance client", "", "SysTreeView322", "Expand", $2)


$3=_GUICtrlTreeView_GetItemHandle($1,0);������Ŀ���
$4=_GUICtrlTreeView_GetFirstChild($1, $3);����ָ����Ŀ�ĵ�һ������
$5=_GUICtrlTreeView_Gettext($1,$4 );������Ŀ�ı�
$6 =_GUICtrlTreeView_FindItem($1, $5)

_GUICtrlTreeView_ClickItem($1,$6,"right",True,1,2);��������б���Ŀ
Send("{down}")
Sleep(2000)
Send("{enter}")
Sleep(2000)
_GUICtrlTreeView_ClickItem($1,$6,"right",True,1,2);��������б���Ŀ
Send("{down 4}")
Sleep(2000)
Send("{enter}")
Sleep(2000)

ControlClick("Video surveillance client","","Button7")
$7= ControlGetHandle("Video surveillance client", "", "SysTreeView322");��ȡ�����б�ؼ����
$8=_GUICtrlTreeView_GetText($7)


$9=_GUICtrlTreeView_GetItemHandle($7,0);������Ŀ���
$10=_GUICtrlTreeView_GetFirstChild($7, $9);����ָ����Ŀ�ĵ�һ������
$11=_GUICtrlTreeView_Gettext($7,$10 );������Ŀ�ı�
$12 =_GUICtrlTreeView_FindItem($7, $11)

_GUICtrlTreeView_ClickItem($7,$12,"right",True,1,2);��������б���ĿSend("{down}")
Send("{down}")
Sleep(2000)
Send("{enter}")
Sleep(2000)
EndFunc