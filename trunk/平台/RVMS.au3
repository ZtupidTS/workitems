#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=L:\����\�ۺ����\3D���ICOͼ��\limewirexx.ico
#PRE_Outfile=C:\Users\chtyfox\Desktop\RVMS.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=3.3.2.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=Сվ����
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
 Local $i = 1
While $i >= 0
    If ProcessExists ( "CuClient.exe" ) Then
		Sleep(10*1000)
		ProcessClose("CuClient.exe") 
		DvrClient()
	EndIf
	
WEnd

Func DvrClient()
ShellExecute("CuClient.exe","","j:\CuClient")
WinWait("RVMSƽ̨-��ؿͻ���")
WinActivate("RVMSƽ̨-��ؿͻ���")
BlockInput(1)
Send("{enter}")
BlockInput(0)
IniWrite(@ScriptDir & "\RVMS.ini", "����", "���д���", $i)
 IniWrite(@ScriptDir & "\RVMS.ini", "����ʱ��", "ʱ��",  @year & "/" & @MON & "/"   & @mday & " " & @HOUR & ":" & @MIN & ":" & @SEC & @CRLF)
$i=$i+1
 EndFunc


