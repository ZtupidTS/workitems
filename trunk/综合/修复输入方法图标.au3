#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=L:\����\�ۺ����\3D���ICOͼ��\tool.ico
#PRE_Outfile=C:\Users\chtyfox\Desktop\�޸����뷽��ͼ��.exe
#PRE_Compression=4
#PRE_UseUpx=n
#PRE_Res_Fileversion=0.0.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_requestedExecutionLevel=None
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
RegWrite('HKEY_USERS\.DEFAULT\Control Panel\Input Method', 'Show Status', 'REG_SZ', '1')
RunWait(@ComSpec & ' /c ' & 'ctfmon', '', @SW_HIDE)
;~ RunWait(@ComSpec & ' /c ' & 'regsvr32 msutb.dll', '', @SW_HIDE)
