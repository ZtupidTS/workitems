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
#Include <GuiListView.au3>
Dim $h=MsgBox(1, "��ע��", "ȷ�����Ѿ��Ҽ�����Զ�����������б�����")
    if  $h<>1  Then
    Exit 0
EndIf 
WinActivate("�Զ���������")
ControlClick("�Զ���������","","Edit1","left",2)
ControlSetText ( "�Զ���������", "", "Edit1", "����ϵ") 
Sleep(500)
ControlClick("�Զ���������","","Button3")
 WinWaitActive("ѡ����ϵ��")
WinActivate("ѡ����ϵ��","")  ;����ָ���Ĵ���(���ý��㵽�ô���,ʹ���Ϊ�����)
edit()
Send("20172");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20118");�´���
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20027");�˲�
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20128");��ΰ
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20017");�Ƴ�
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20026");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20136");�Ӽ̷�
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20022");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20306");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20305");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20350");���
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20220");����
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20097");���˺�
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20334");���
Sleep(500)
b7()
b8()
Sleep(500)
edit()
Send("20360");������
Sleep(500)
b7()
b8()
edit()
Send("20184");����
Sleep(500)
b7()
b8()
ControlClick("ѡ����ϵ��","","Button12")

Sleep(500)
ControlClick("�Զ���������","","Button1")

Func edit()
	ControlClick("ѡ����ϵ��","","Edit1")
EndFunc

Func b7()
	ControlClick("ѡ����ϵ��","","Button7")
EndFunc	

Func b8()
	ControlClick("ѡ����ϵ��","","Button8")
EndFunc	
