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
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
$lab1 = "����һ�����������쳤��lable"
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 623, 442, 192, 124)
$lablel1 = _GUICtrlCreateLabel($lab1, 0, 0, -1, -1, 18)
GUICtrlSetBkColor(-1, "0xFF0000")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
        EndSwitch
WEnd
 ;_GUICtrlCreateLabel("�ı�",���, ����[, ��ʽ [, ��չ��ʽ[,�����С,[Ȩֵ[,����[,������[,����]]]]]]] );����鿴GUICtrlCreateLabel������GUICtrlSetFont����
Func _GUICtrlCreateLabel($text, $left, $top, $yangshi = -1, $kuozhang = -1, $size = 8.5, $quanzhi = 400, $shuxing = "", $fontmane = "", $zhiliang = 2)
        If Not $text Then Return GUICtrlCreateLabel($text, $left, $top, -1, -1, $yangshi, $kuozhang)
        $lable_single = StringRegExp($text, '[\x00-\xff]', 3)
        If @error Then
                $lable_double = StringLen($text)
                $lable_single = 0
        Else
                $lable_single = UBound($lable_single)
        EndIf
        $lable_double = StringLen($text) - $lable_single
        $lable_width = $lable_double * ($size / 3 * 4) + $lable_single * ($size / 3 * 2)
        $label_ret = GUICtrlCreateLabel($text, $left, $top, $lable_width, $size * 4 / 3, $yangshi, $kuozhang)
        GUICtrlSetFont(-1, $size, $quanzhi, $shuxing, $fontmane, $zhiliang)
        Return $label_ret
        ;���ߣ�www.autobatch.org - ��
EndFunc   ;==>_GUICtrlCreateLabel