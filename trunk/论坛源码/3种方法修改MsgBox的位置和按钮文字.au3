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

#cs
;��1��
;===============================================================================
;~ �ο��� http://www.autoitscript.com/forum/topic/27507-move-msgbox-and-change-the-buttons/
;~ ����: _MsgBoxChangeButtons()
;~ ����: �޸� MsgBox() ��λ�û�ť����
;~ ԭUDF����: HerewasPlato and Smoke_N ChrisL
;~ �޸ģ��׿ǳ�
;~ ����:
;~ $flag = MsgBox() �� flag
;~ $title = MsgBox() ����
;~ $text = MsgBox() ����Ϣ����
;~ $timeout = MsgBox() ��ʱ
;~ $hwnd = MsgBox() �� hwnd
;~ $Button1 = ��һ����ťҪ��ʾ������
;~ $Button2 = �ڶ�����ťҪ��ʾ������
;~ $Button3 = ��������ťҪ��ʾ������
;~ $x = MsgBox() �� x ����
;~ $y = MsgBox() �� y ����
;~ ����ֵ: ͬ MsgBox() �ķ���ֵ
;~ ��:
$msg = _MsgBoxChangeButtons(3, '_MsgBoxChangeButtons()ʾ��', _
                '������ MsgBox(3, "����", "...") �İ�ť��λ�ý����޸ģ�' & @CRLF & _
                '��һ����ť���ǡ��ĳɡ���ť1��' & @CRLF & _
                '�ڶ�����ť���񡱸ĳɡ��޸����á�' & @CRLF & _
                '��������ť��ȡ�������޸�' & @CRLF & _
                'x ���겻�䣬y ����ĳ� 100', 0, '', '��ť1', '�޸�����', '', '', 100)
MsgBox(0, '_MsgBoxChangeButtons()', '���أ�' & $msg)
;===============================================================================

Func _MsgBoxChangeButtons($flag, $title, $text, $timeout = 0, $hwnd = '', $Button1 = '', $Button2 = '', $Button3 = '', $x = '', $y = '')
        Local $sText = StringRegExpReplace($text, '(?:\r|\n).*', '') ; ֻȡ��һ��
        Local $MBLine = '#NoTrayIcon' & @CRLF
        $MBLine &= 'Opt("WinWaitDelay", 0)' & @CRLF
        $MBLine &= 'WinWait(''' & $title & ''', ''' & $sText & ''', 1)' & @CRLF
        If $x <> '' Or $y <> '' Then
                If $x = '' Then $x = 'Default'
                If $y = '' Then $y = 'Default'
                $MBLine &= 'WinMove(''' & $title & ''', ''' & $sText & ''' , ' & $x & ', ' & $y & ')' & @CRLF
        EndIf
        If $Button1 <> '' Then $MBLine &= 'ControlSetText(''' & $title & ''', ''' & $sText & ''', ''Button1'', ''' & $Button1 & ''')' & @CRLF
        If $Button2 <> '' Then $MBLine &= 'ControlSetText(''' & $title & ''', ''' & $sText & ''', ''Button2'', ''' & $Button2 & ''')' & @CRLF
        If $Button3 <> '' Then $MBLine &= 'ControlSetText(''' & $title & ''', ''' & $sText & ''', ''Button3'', ''' & $Button3 & ''')' & @CRLF
        $MBLine &= 'FileDelete(@ScriptFullPath)' ; ɾ���Լ�

        Local $MBFile = @ScriptDir & '\MiscMMB.au3'
        FileDelete($MBFile)
        FileWrite($MBFile, $MBLine)
        Run(@AutoItExe & ' /AutoIt3ExecuteScript "' & $MBFile & '"')
        Return MsgBox($flag, $title, $text, $timeout, $hwnd)
EndFunc   ;==>_MsgBoxChangeButtons
#ce


#cs
;��2��
;===============================================================================
;~ ����: MsgBoxEx()
;~ ����: �޸� MsgBox() ��λ�û�ť����
;~ ���ߣ��׿ǳ�
;~ ����:
;~ $flag = MsgBox() �� flag
;~ $title = MsgBox() ����
;~ $text = MsgBox() ����Ϣ����
;~ $timeout = MsgBox() ��ʱ
;~ $hwnd = MsgBox() �� hwnd
;~ $Button1 = ��һ����ťҪ��ʾ������
;~ $Button2 = �ڶ�����ťҪ��ʾ������
;~ $Button3 = ��������ťҪ��ʾ������
;~ $x = MsgBox() �� x ����
;~ $y = MsgBox() �� y ����
;~ ����ֵ: ͬ MsgBox() �ķ���ֵ
;~ ��:
$msg = MsgBoxEx(3, '_MsgBoxEx()ʾ��', _
                '������ MsgBox(3, "����", "...") �İ�ť��λ�ý����޸ģ�' & @CRLF & _
                '��һ����ť���ǡ��ĳɡ���ť1��' & @CRLF & _
                '�ڶ�����ť���񡱸ĳɡ��޸����á�' & @CRLF & _
                '��������ť��ȡ�������޸�' & @CRLF & _
                'x ���겻�䣬y ����ĳ� 100', 0, '', '��ť1', '�޸�����', '', '', 100)
MsgBox(0, 'MsgBoxEx()', '���أ�' & $msg)
;===============================================================================

Func MsgBoxEx($flag, $title, $text, $TimeOut = 0, $hwnd = '', $Button1 = '', $Button2 = '', $Button3 = '', $x = '', $y = '')
        Global $MB__title = $title, $MB__text = $text
        Global $MB__Button1 = $Button1, $MB__Button2 = $Button2, $MB__Button3 = $Button3
        Global $MB__x = $x, $MB__y = $y
        Global $MB__Timer = DllCallbackRegister('MB__Timer', 'int', 'hwnd;uint;uint;dword')
        Global $MB__TimerDLL = DllCall('user32.dll', 'uint', 'SetTimer', 'hwnd', 0, 'uint', _
                        0, 'int', 1, 'ptr', DllCallbackGetPtr($MB__Timer))
        Sleep(3)
        Return MsgBox($flag, $title, $text, $TimeOut, $hwnd)
EndFunc   ;==>MsgBoxEx

Func MB__Timer($hwnd, $uiMsg, $idEvent, $dwTime)
        If WinExists($MB__title, $MB__text) Then
                ; �ƶ� MsgBox λ��
                If $MB__x <> '' Or $MB__y <> '' Then
                        If $MB__x = '' Then $MB__x = Default
                        If $MB__y = '' Then $MB__y = Default
                        WinMove($MB__title, $MB__text, $MB__x, $MB__y)
                EndIf
                ; �޸İ�ť����
                If $MB__Button1 <> '' Then ControlSetText($MB__title, $MB__text, 'Button1', $MB__Button1)
                If $MB__Button2 <> '' Then ControlSetText($MB__title, $MB__text, 'Button2', $MB__Button2)
                If $MB__Button3 <> '' Then ControlSetText($MB__title, $MB__text, 'Button3', $MB__Button3)

                DllClose($MB__TimerDLL)
                DllCallbackFree($MB__Timer)
        EndIf
EndFunc   ;==>MB__Timer
#ce


#cs
;��3��
;===============================================================================
;~ �ο��� http://www.autoitx.com/viewthread.php?tid=13550&extra=&page=3
;~ ����: MsgBoxE()
;~ ����: �޸� MsgBox() ��λ�û�ť����
;~ ���ߣ��׿ǳ�
;~ ����:
;~ $flag = MsgBox() �� flag
;~ $title = MsgBox() ����
;~ $text = MsgBox() ����Ϣ����
;~ $timeout = MsgBox() ��ʱ
;~ $hwnd = MsgBox() �� hwnd
;~ $Button1 = ��һ����ťҪ��ʾ������
;~ $Button2 = �ڶ�����ťҪ��ʾ������
;~ $Button3 = ��������ťҪ��ʾ������
;~ $x = MsgBox() �� x ����
;~ $y = MsgBox() �� y ����
;~ ����ֵ: ͬ MsgBox() �ķ���ֵ
;~ ��:
$msg = MsgBoxE(3, '_MsgBoxE()ʾ��', _
                '������ MsgBox(3, "", "...") �İ�ť��λ�ý����޸ģ�' & @CRLF & @CRLF & _
                '��һ����ť���ǡ��ĳɡ���ť1��' & @CRLF & _
                '�ڶ�����ť���񡱸ĳɡ��޸����á�' & @CRLF & _
                '��������ť��ȡ�������޸�' & @CRLF & _
                'x ���겻�䣬y ����ĳ� 100', 0, '', '��ť1', '�޸�����', '', '', 100)
MsgBox(0, 'MsgBoxE()', '���أ�' & $msg)
;===============================================================================
Func MsgBoxE($flag, $title, $text, $timeout = 0, $hwnd = '', $Button1 = '', $Button2 = '', $Button3 = '', $x = '', $y = '')

        ; �������� title ���洫�ݸ� MB__CallBack������ʹ��ȫ�ֱ���
        $title &= @crlf & 'B1=' & $Button1 & @crlf & 'B2=' & $Button2 & @crlf & 'B3=' & $Button3 & @crlf & 'x=' & $x & @crlf & 'y=' & $y

        Local $hGUI = GUICreate("")
        Local $sFuncName = "GetWindowLongW"
        If @AutoItX64 Then $sFuncName = "GetWindowLongPtrW"
        Local $aResult = DllCall("user32.dll", "long_ptr", $sFuncName, "hwnd", $hGUI, "int", -6)
        Local $hInst = $aResult[0]

        $aResult = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
        Local $iThreadId = $aResult[0]

        Local $hCallBack = DllCallbackRegister("MB__CallBack", "int", "int;hWnd;ptr")
        Local $pCallBack = DllCallbackGetPtr($hCallBack)

        $aResult = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", 5, "ptr", $pCallBack, "handle", $hInst, "dword", $iThreadId)
        Local $hHook = $aResult[0]

        Local $msg = MsgBox($flag, $title, $text, $timeout, $hwnd)

        GUIDelete($hGUI)
        DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $hHook)
        DllCallbackFree($hCallBack)
        Return $msg
EndFunc   ;==>MsgBoxE

Func MB__CallBack($iCode, $wParam, $lParam)
;~         ConsoleWrite('$iCode=' & $iCode & ', $wParam=' & $wParam & ', $lParam=' & $lParam & @CRLF)

        If $iCode = 5 Then

                Local $title = WinGetTitle($wParam)
                If Not StringInStr($title, @crlf & 'B1=') Then Return

                Local $match = StringRegExp($title, '(?i)\r\nB1=(.*)\r\nB2=(.*)\r\nB3=(.*)\r\nx=(.*)\r\ny=(.*)', 1)
                If @error Then Return

                ; �Ļ� title
                $title = StringRegExpReplace($title, '(?i)(?s)\r\nB1=.*', '')
                WinSetTitle($wParam, '', $title)

                ; �ƶ� MsgBox λ��
                If $match[3] <> '' Or $match[4] <> '' Then
                        If $match[3] = '' Then $match[3] = Default
                        If $match[4] = '' Then $match[4] = Default
                        WinMove($wParam, '', $match[3], $match[4])
                EndIf

                ; �޸İ�ť����
                If $match[0] <> '' Then ControlSetText($wParam, '', 'Button1', $match[0])
                If $match[1] <> '' Then ControlSetText($wParam, '', 'Button2', $match[1])
                If $match[2] <> '' Then ControlSetText($wParam, '', 'Button3', $match[2])
        EndIf
EndFunc   ;==>MB__CallBack
#ce