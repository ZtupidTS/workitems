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
 
Example()
 
Func Example()
  Local $msg, $checkbox[3], $radio[5]
  GUICreate("My GUI Checkbox") ; ����һ���Ի��򣬲�������ʾ
 
  $checkbox[0] = GUICtrlCreateCheckbox("CHECKBOX 1", 10, 10, 120, 20)
  For $i = 0 To 4
    $radio[$i] = GUICtrlCreateRadio('radio', 10, ($i + 2) * 20, 130.20)
    GUICtrlSetState(-1, $gui_disable)
  Next
        ;       $checkbox[1] = GUICtrlCreateCheckbox("CHECKBOX 1", 10, 90, 120, 20)
        ;       $checkbox[2] = GUICtrlCreateCheckbox("CHECKBOX 1", 10,120, 120, 20)
 
    GUISetState() ; ��ʾ�и�ѡ��(Checkbox)�ؼ��ĶԻ���
 
    ; ���н���,ֱ�����ڱ��ر�
    While 1
       $msg = GUIGetMsg()
       If $msg = $checkbox[0] Then
        For $i = 0 To 4
         ; GUICtrlSetState($radio[$i], BitShift(GUICtrlRead($checkbox[0]), -5) * (BitAND(GUICtrlRead($checkbox[0]), 1) + 1))
         ; GUICtrlSetState($radio[$i], BitShift(BitShift(GUICtrlRead($checkbox[0]), -5), - BitAND(GUICtrlRead($checkbox[0]), 1)))
          GUICtrlSetState($radio[$i], BitShift(GUICtrlRead($checkbox[0]), -5 - BitAND(GUICtrlRead($checkbox[0]), 1)))
        Next
      EndIf
      If $msg = $GUI_EVENT_CLOSE Then ExitLoop
   WEnd
EndFunc   ;==>Example