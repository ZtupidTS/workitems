#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=J:\putty.exe
#PRE_Outfile=C:\Users\chtyfox\Desktop\����������.exe
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
ShellExecute("putty.exe","","J:\")
WinWait("PuTTY ����")
ControlClick("PuTTY ����","","Edit1")
ControlSetText("PuTTY ����","","Edit1","192.168.2.123")
ControlClick("PuTTY ����","","Button1")
WinWait("192.168.2.123 - PuTTY")
WinActivate("192.168.2.123 - PuTTY")
 Dim $i=MsgBox(1,"ע��","�������ʺ�root������rayray���ڵ��ȷ��" & @CR &"�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
 Dim $i=MsgBox(1,"ע��","�븴�Ʒ����������ļ��������ֺ��ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
WinWait("root@localhost:~")
WinActivate("root@localhost:~")
Send("cd /home")
Send("{enter}")
WinActivate("root@localhost:/home")
Send("tar zxvf ")
 Dim $i=MsgBox(1,"ע��","���ڡ�root@localhost:~����������������Ҽ����ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf
WinActivate("root@localhost:/home")
Send("{enter}");RS_upgrade_pack
Dim $i=MsgBox(1,"ע��","���ڡ�root@localhost:~�������������ȴ��ļ���ѹ����ڵ��ȷ��" & @CR & "�����ȡ�����������б��ű�")
    if  $i=2  Then
	ProcessClose("putty.exe")
    Exit 
EndIf

WinActivate("root@localhost:/home")
Send("cd ./RS_upgrade_pack")
Send("{enter}")
Sleep(2000)
Send("./RS_upgrade.sh /home/RS_upgrade_pack /home/RS_CMS_PC64")
Send("{enter}")
MsgBox(0,"ע��","��ȴ�������������ɺ��ڵ��ȷ��")
ProcessClose("putty.exe")