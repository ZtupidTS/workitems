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
#include <EditConstants.au3>
#include <GUIConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
Local $aSndID
For $i = 1 To 8
        $aSndID &= Chr(Random(97, 122, 1));65, 90,��д
                
Next;------------->
$Form1 = GUICreate($aSndID, 216, 41, -1, -1)
$Input1 = GUICtrlCreateInput("", 8, 8, 121, 21)
$dl = GUICtrlCreateButton("��  ��", 136, 8, 75, 25)
GUICtrlSetFont(-1, 14, 400, 0, "΢���ź�")
GUICtrlSetTip($dl, " ������Ҫ��������'"  & "'���������������ʾ����ĸ" & @CRLF & "��������.", "��ʾ", "1", "1")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
 
#Region ### START Koda GUI section ### Form=
$Form2 = GUICreate("�ı���", 356, 257, 192, 124)
$Edit1 = GUICtrlCreateEdit("",16, 8, 313, 233)
GUISetState(@SW_HIDE)
While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
        Case $dl
                         $password = GUICtrlRead($Input1)
                          If $password <> BinaryToString($aSndID)  Then
                                        MsgBox(16, "����"& $aSndID, "��--��֤�벻��ȷ��" & @CRLF & "������������ĸ����")
                                                                        Else
                                                                                GUISetState(@SW_HIDE, $Form1)
                                                                                GUISetState(@SW_SHOW, $Form2)
                                        ExitLoop
                                                                                EndIf
        EndSwitch
WEnd
 
While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
        EndSwitch
WEnd