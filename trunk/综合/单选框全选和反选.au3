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

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section 
$Form1 = GUICreate("Form1", 623, 442, 192, 124)
$Checkbox1 = GUICtrlCreateCheckbox("Checkbox1", 140, 57, 92, 46)
$Checkbox2 = GUICtrlCreateCheckbox("Checkbox2", 154, 134, 97, 17)
$Checkbox3 = GUICtrlCreateCheckbox("Checkbox3", 171, 180, 97, 17)
$Radio1 = GUICtrlCreateRadio("Radio1", 379, 358, 113, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $a = False

While 1	
$nMsg = GUIGetMsg()	

Select 
	Case $nMsg=$GUI_EVENT_CLOSE	

		Exit		
Case $nMsg=$Radio1			

If $a Then 				
GUICtrlSetState($Checkbox1,$GUI_UNCHECKED)	
GUICtrlSetState($Checkbox2,$GUI_UNCHECKED)	
GUICtrlSetState($Checkbox3,$GUI_UNCHECKED)	
		$a = Not $a			
Else				
GUICtrlSetState($Checkbox1,$GUI_CHECKED)	
GUICtrlSetState($Checkbox2,$GUI_CHECKED)	
GUICtrlSetState($Checkbox3,$GUI_CHECKED)	
	$a = Not $a		


EndIf	
            EndSelect

WEnd
