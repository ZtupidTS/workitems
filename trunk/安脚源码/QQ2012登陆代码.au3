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

$usr = "����Q��";����Q��
$pwd = "��������";��������
#include <Process.au3>
$ExistEdit1=0
Run(StringRegExpReplace(RegRead('HKEY_CLASSES_ROOT\Tencent\DefaultIcon', ''), '[^\\]+$', '') & 'QQ.exe')
WinWait("QQ2012")
$Newusr = StringRegExp($usr, "(.)", 3)
$Newpwd = StringRegExp($pwd, "(.)", 3)
Do 
$list=WinList('[class:TXGuiFoundation]')
For $u=1 To $list[0][0]
$LPID=WinGetProcess($list[$u][1])
If _ProcessGetName($LPID)="QQ.exe" Then
$POS=WinGetPos($list[$u][1])
$ExistEdit1=ControlSend($list[$u][1], "", "Edit1", "+{tab}")
If $ExistEdit1 Then
Local $QQ[5]=[$list[$u][1],$POS[0],$POS[1],$POS[2],$POS[3]]
ExitLoop
EndIf
EndIf
Next
Sleep(300)
Until $ExistEdit1
Do 
Sleep(300)
Until ControlSend($QQ[0], "", "Edit1", "+{tab}")
For $n = 0 To StringLen($usr) - 1
ControlSend($QQ[0], "", "", $Newusr[$n],1)
Next
For $n = 0 To 15
ControlSend($QQ[0], "", "Edit1", "{BS}")
Next
For $n = 0 To StringLen($pwd) - 1
ControlSend($QQ[0], "", "Edit1", $Newpwd[$n],1)
Next
ControlSend($QQ[0], "", "Edit1", "{enter}")