#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=J:\WinSCP\WinSCP.exe
#PRE_Outfile=C:\Users\chtyfox\Desktop\�����������ļ�����.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=2.1.1.0
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
MsgBox(0,"ע��","���б��ű��벻Ҫ����������лл")
#Include <GuiTreeView.au3>
ShellExecute("WinSCP.exe","","J:\WinSCP")
WinWait("WinSCP ��¼")
$1= ControlGetHandle("WinSCP ��¼", "", "TTreeView2");��ȡ�����б�ؼ����
$2 =_GUICtrlTreeView_FindItem($1, "root@192.168.2.123")
_GUICtrlTreeView_ClickItem($1,$2,"left",True);��������б���Ŀ
Sleep(500)
ControlClick("WinSCP ��¼","��¼","TButton14")
WinWait("root - root@192.168.2.123 - WinSCP")
WinActivate("root - root@192.168.2.123 - WinSCP")
Send("{enter}")
WinWait("/ - root@192.168.2.123 - WinSCP")
WinActivate("/ - root@192.168.2.123 - WinSCP")
Send("h")
Send("{enter}")
 Dim $i=MsgBox(1,"ע��","���Ҫ�������ļ�������һ�º���ȷ��" & @CR &"�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("WinSCP.exe")
    Exit 
EndIf
WinActivate("home - root@192.168.2.123 - WinSCP")
ControlClick("home - root@192.168.2.123 - WinSCP","","TPanel3")
Send("^v")
WinWait("����")
ControlClick("����","","TButton5")
MsgBox(0,"ע��","��ȴ��ļ�������ɺ��ڵ��ȷ��")
ProcessClose("WinSCP.exe")