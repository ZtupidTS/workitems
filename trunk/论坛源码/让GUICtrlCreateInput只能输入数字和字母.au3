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
#include <GUIConstantsEx.au3>
 
 
$Form = GUICreate("Form1", 633, 454, 192, 114)
$Inputuser = GUICtrlCreateInput("", 82, 90, 93, 20)
$Label = GUICtrlCreateLabel("", 186, 91, 160, 20)
$Inputpass = GUICtrlCreateInput("", 82, 120, 93, 20)
$ccccc = GUICtrlCreateButton("Check", 100, 150, 75, 25)
GUISetState(@SW_SHOW)
 
While 1
        $msg = GUIGetMsg()
        Select
                Case $msg = $GUI_EVENT_CLOSE
                        Exit
                Case $msg = $Inputuser
                        InputCheck()
        EndSelect
WEnd
 
 
Func InputCheck()
        $user = GUICtrlRead($Inputuser)
        If Not StringRegExp($user, "^[A-Za-z0-9]+$") Then
                GUICtrlSetState($Inputuser, $GUI_FOCUS)
                GUICtrlSetData($Label, "X ֻ��������Ӣ����ĸ������.")
                GUICtrlSetColor($Label, 0xFF0000)
                GUICtrlSetFont($Label, 9, 400, 0, "Tahoma")
        Else
                GUICtrlSetData($Label, "�� ������ȷ.")
                GUICtrlSetFont($Label, 9, 800, 0, "Tahoma")
                GUICtrlSetColor($Label, 0x008000)
                GUICtrlSetFont($Label, 9, 400, 0, "Tahoma")
        EndIf
EndFunc   ;==>InputCheck
