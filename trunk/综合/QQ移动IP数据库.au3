#region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=L:\����\�ۺ����\3D���ICOͼ��\paint.ico
#PRE_Outfile=C:\Users\chtyfox\Desktop\QQ�ƶ�IP���ݿ�.exe
#PRE_Compression=4
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=2.0.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#PRE_Res_LegalCopyright=Сվ����
#endregion ;**** ���������� ACNWrapper_GUI ****
#region ACNԤ����������(���ò���)
;#PRE_Res_Field=AutoIt Version|%AutoItVer%		;�Զ�����Դ��
;#PRE_Run_Tidy=                   				;�ű�����
;#PRE_Run_Obfuscator=      						;�����Ի�
;#PRE_Run_AU3Check= 							;�﷨���
;#PRE_Run_Before= 								;����ǰ
;#PRE_Run_After=								;���к�
;#PRE_UseX64=n									;ʹ��64λ������
;#PRE_Compile_Both								;����˫ƽ̨����
#endregion ACNԤ����������(���ò���)
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
	
	Au3 �汾:3.9.9.0
	�ű�����:Сվ
	�����ʼ�:
	QQ/TM:
	�ű��汾:
	�ű�����:
	
#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

FileInstall("ip.exe", @ScriptDir & "\")
FileInstall("RunToKillQQAdIP.exe", @ScriptDir & "\")
FileDelete(@ScriptDir & "\QQWry.DAT")
FileDelete(@ScriptDir & "\CoralWry.dat")
ShellExecute("ip.exe", "", @ScriptDir)
WinWait("����", "ȷ��", 5)
ControlClick("����", "ȷ��", "Button1")
ControlClick("����IP��ַ���ݿ� ��CZ88.NET��", "��������", "TBitBtn1")
WinWait("����", "ȷ��", 5)
ControlClick("����", "ȷ��", "Button1")
WinWait("�����IP���ݿ⣨CZ88.NET��", "����")
ControlClick("�����IP���ݿ⣨CZ88.NET��", "����", "TButton2")
WinWait("��Ϣ", "ȷ��")
ControlClick("��Ϣ", "ȷ��", "Button1")
ControlClick("�����IP���ݿ⣨CZ88.NET��", "�˳�", "TButton1")
ControlClick("����IP��ַ���ݿ� ��CZ88.NET��", "�˳�", "TBitBtn3")
FileDelete(@ScriptDir & "\IPwry.exe")
ShellExecute("RunToKillQQAdIP.exe", "", @ScriptDir)
WinWait("����Ա:  ����IP���ݿ�ת��ΪKillQQAd����IP���ݿ�")
For $i = 5000 To 1 Step -1
	If ProcessExists("RunToKillQQAdIP.exe") Then ; Check if the Notepad process is running.
		WinActivate("����Ա:  ����IP���ݿ�ת��ΪKillQQAd����IP���ݿ�")
		Send("{enter}")
	Else
		FileMove("CoralWry.dat", RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Tencent\QQ2009", "Install") & "\Bin\HKDlls", 1);CoralWry.dat
		ExitLoop
	EndIf

Next

FileDelete(@ScriptDir & "\ip.exe")
FileDelete(@ScriptDir & "\RunToKillQQAdIP.exe")
FileDelete(@ScriptDir & "\QQWry.DAT")

$t = FileGetTime(RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Tencent\QQ2009", "Install") & "\Bin\HKDlls" & "\CoralWry.dat", 0)
If Not @error Then
	Local $yyyymd = $t[0] & "/" & $t[1] & "/" & $t[2]
	MsgBox(4096, "CoralWry:", "CoralWry�޸�����:" & $yyyymd)
EndIf



