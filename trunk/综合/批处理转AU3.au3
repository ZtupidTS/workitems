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

#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=D:\autoit3\Aut2Exe\Icons\apple.ico
#AutoIt3Wrapper_outfile=_BatToAU3ToRun.exe
#AutoIt3Wrapper_Res_Comment=_BatToAU3ToRun
#AutoIt3Wrapper_Res_Description=_BatToAU3ToRun
#AutoIt3Wrapper_Res_Fileversion=1.3.0.0
#AutoIt3Wrapper_Res_LegalCopyright=lixiaolong - http://www.autoitx.com/
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <Misc.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
 
_Singleton(" _BatToAU3 ~To Run~ 1.3 by lixiaolong")
Opt("TrayIconHide", 1)
GUICreate(" _BatToAU3 ~To Run~ 1.3 by lixiaolong", 660, 480)
$RegName = GUICtrlCreateEdit("", 10, 30, 640, 160, BitOR($ES_AUTOVSCROLL, $WS_VSCROLL, $ES_MULTILINE, $ES_WANTRETURN))
GUICtrlCreateLabel('DOS����:', 10, 10, '', 15)
$RegADD = GUICtrlCreateEdit("", 10, 215, 640, 160, BitOR($ES_AUTOVSCROLL, $WS_VSCROLL, $ES_MULTILINE, $ES_WANTRETURN))
GUICtrlCreateLabel('ת����:', 10, 195, '', 15)
$ying = GUICtrlCreateRadio("����ָ������", 10, 385, 100)
GUICtrlSetState(-1, $GUI_CHECKED)
$zuida = GUICtrlCreateRadio("���ָ������", 130, 385, 120)
$Run = GUICtrlCreateCheckbox("Run", 270, 385)
$rundos = GUICtrlCreateCheckbox("RunDos", 340, 385)
$rundosIn = GUICtrlCreateCheckbox("RunDos(���� #include <Process.au3>)", 400, 385)
$btn2 = GUICtrlCreateButton("ת��", 10, 415, 640, 20)
$btn3 = GUICtrlCreateButton("����", 10, 435, 640, 20)
$btn4 = GUICtrlCreateButton("���", 10, 455, 640, 20)
GUISetState()
WinSetOnTop(" _BatToAU3 -To Run- by lixiaolong", '', 1)
 
While 1
        $msg = GUIGetMsg()
        Select
                Case $msg = $btn2
                        $RegNameRead = GUICtrlRead($RegName)
                        If $RegNameRead <> '' Then
                                If GUICtrlRead($rundos) = $GUI_CHECKED Then
                                        _ToRunDos($RegNameRead, 0)
                                ElseIf GUICtrlRead($rundosIn) = $GUI_CHECKED Then
                                        _ToRunDos($RegNameRead, 1)
                                Else
                                        If GUICtrlRead($ying) = $GUI_CHECKED Then
                                                _BatToAU3($RegNameRead, "@SW_HIDE")
                                        Else
                                                _BatToAU3($RegNameRead, "@SW_MAXIMIZE")
                                        EndIf
                                EndIf
                        EndIf
                Case $msg = $Run
                        CHECKED($Run)
                Case $msg = $rundos
                        CHECKED($rundos)
                Case $msg = $rundosIn
                        CHECKED($rundosIn)
                Case $msg = $btn3
                        If GUICtrlRead($RegADD) <> '' Then ClipPut(GUICtrlRead($RegADD))
                Case $msg = $btn4
                        GUICtrlSetData($RegADD, '')
                        GUICtrlSetData($RegName, '')
                Case $msg = $GUI_EVENT_CLOSE
                        Exit
        EndSelect
WEnd
 
Func CHECKED($CHECKED)
        GUICtrlSetState($Run, $GUI_UNCHECKED)
        GUICtrlSetState($rundos, $GUI_UNCHECKED)
        GUICtrlSetState($rundosIn, $GUI_UNCHECKED)
        GUICtrlSetState($CHECKED, $GUI_CHECKED)
EndFunc   ;==>CHECKED
 
Func _BatToAU3($BatFile, $SW)
        Local $BatToRun, $RunWait = 'RunWait'
        $String = StringSplit($BatFile & @CRLF, @CRLF)
        If GUICtrlRead($Run) = $GUI_CHECKED Then $RunWait = 'Run'
        For $i = 1 To $String[0] - 1
                If $String[$i] Then _
                                $BatToRun &= $RunWait & "(@ComSpec & ' /c ' & '" & StringReplace(StringReplace($String[$i], "'", "'" & _
                                ' & "' & "'" & '" & _' & @CRLF & "'"), "%%", "%") & "', '', " & $SW & ')' & @CRLF
        Next
        GUICtrlSetData($RegADD, $BatToRun)
EndFunc   ;==>_BatToAU3
 
Func _ToRunDos($BatFile, $Frag)
        Local $BatToRunDos, $Include = ""
        $String = StringSplit($BatFile & @CRLF, @CRLF)
 
        For $i = 1 To $String[0] - 1
                If $String[$i] Then
                        $BatToRunDos &= "_RunDos('" & StringReplace(StringReplace($String[$i], "'", "'" & _
                                        ' & "' & "'" & '" & _' & @CRLF & "'"), "%%", "%") & "')" & @CRLF
                EndIf
        Next
        If $Frag Then $Include = "#include <Process.au3>" & @CRLF & @CRLF
        GUICtrlSetData($RegADD, $Include & $BatToRunDos)
EndFunc   ;==>_ToRunDos
