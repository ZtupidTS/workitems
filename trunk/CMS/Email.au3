#Region ACNԤ�����������(���ò���)
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
#EndRegion ACNԤ������������������
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

 Au3 �汾: 
 �ű�����: 
 �����ʼ�: 
	QQ/TM: 
 �ű��汾: 
 �ű�����: 

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
#Include <GuiComboBox.au3>
#include<MsgBoxDJS.au3>
WinActivate("Remote Setup(14)")

$E = ControlGetHandle ("Remote Setup(14)","","ComboBox37")
_GUICtrlComboBox_SetCurSel($E,1)
ControlClick("Remote Setup(14)","","Edit40","left",2)
Send("25")
ControlClick("Remote Setup(14)","","Edit41")
Send("smtp.126.com")
ControlClick("Remote Setup(14)","","Edit42")
Send("zhqf2020@126.com")
ControlClick("Remote Setup(14)","","Edit43")
Send("19831012")
ControlClick("Remote Setup(14)","","Edit44")
Send("1648872206@qq.com")
$E = ControlGetHandle ("Remote Setup(14)","","ComboBox39")
_GUICtrlComboBox_SetCurSel($E,3)

save()

Func save()
	ControlClick("Remote Setup(14)","Save","Button3")
	sl()
	$var = ControlGetText("Remote Setup(14)", "Save Email Succeed!", "Static1");��ȡָ���ؼ��ϵ��ı�.
	$I=StringCompare($var,"Save Email Succeed!");��ѡ��Ƚ������ַ���.
 If $I = 0 Then   ; �ַ���1 ���� �ַ���2
	$msg = MsgBoxDJS(0 + 48 + 4, '�����Ѿ�����ɹ�', '��԰�ˣ�' & @CRLF & '�Ƿ������', 5, 2)
 EndIf

EndFunc