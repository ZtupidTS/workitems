#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_icon=J:\VMware\vmware.exe|-1
#PRE_Outfile=C:\Users\xiaozhan\Desktop\�ر�VMware Workstation���н���.exe
#PRE_Compression=4
#PRE_Res_Comment=����ʱ�رս���
#PRE_Res_Description=����ʱ�رս���
#PRE_Res_Fileversion=1.1.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=Сվ
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

ProcessClose("vmnat.exe")
ProcessClose("vmware-authd.exe")
ProcessClose("vmware-hostd.exe")
ProcessClose("vmware-tray.exe")
ProcessClose("vmware-usbarbitrator.exe")
ProcessClose("vmnetdhcp.exe")
ProcessClose("WmiPrvSE.exe")
ProcessClose("WmiPrvSE.exe")


If Not (ProcessExists("vmnat.exe") Or ProcessExists("vmware-authd.exe") Or ProcessExists("vmware-hostd.exe") Or ProcessExists("vmware-tray.exe") Or ProcessExists("vmware-usbarbitrator.exe") Or ProcessExists("vmnetdhcp.exe") Or ProcessExists("wmiprvse.exe") Or ProcessExists("wmiprvse.exe")) Then
	MsgBox(4096, "CMS", "ȫ��ɾ���ɹ�")
Else
	If ProcessExists("vmnat.exe") Then MsgBox(4096, "CMS", "vmnatɾ�����ɹ�")
	If ProcessExists("vmware-authd.exe") Then MsgBox(4096, "CMS", "vmware-authdɾ�����ɹ�")
	If ProcessExists("vmware-hostd.exe") Then MsgBox(4096, "CMS", "vmware-hostdɾ�����ɹ�")
	If ProcessExists("vmware-tray.exe") Then MsgBox(4096, "CMS", "vmware-trayɾ�����ɹ�")
	If ProcessExists("vmware-usbarbitrator.exe") Then MsgBox(4096, "CMS", "vmware-usbarbitratorɾ�����ɹ�")
	If ProcessExists("vmnetdhcp.exe") Then MsgBox(4096, "CMS", "vmnetdhcpɾ�����ɹ�")
	If ProcessExists("WmiPrvSE.exe") Then MsgBox(4096, "CMS", "WmiPrvSEɾ�����ɹ�")
EndIf