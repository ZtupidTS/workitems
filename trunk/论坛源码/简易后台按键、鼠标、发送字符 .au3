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
Run("notepad.exe")
  $hWnd = WinWaitActive("�ޱ��� - ���±�")
  $cWnd = ControlGetHandle($hWnd, "", "Edit1")
  _SendString($cWnd, "PostMessage������Ϣ����");���������ַ�����
  
 
;���Ǳ�����
Func _SendString($hWnd, $Str)
        For $s = 1 To StringLen($Str)
                $St = StringMid($Str, $s, 1)
                If Asc($St) < 128 Then ;�������С��128ΪӢ��
                        _PostMessage($hWnd, 0x286, Asc($St), 0);WM_IME_CHAR
                Else;����127Ϊ����
                        $IME = StringToASCIIArray($St, 0, 1, 1)
                        Local $ASCs = '0x'
                        For $a = 0 To UBound($IME) - 1
                                $ASCs &= Hex($IME[$a], 2);�ϲ�����
                        Next
                        _PostMessage($hWnd, 0x286, $ASCs, 0);WM_IME_CHAR
                EndIf
        Next
        ;ʹ��_SendMessageAҲ��
EndFunc   ;==>_SendString
 
Func _MouseClick($hWnd, $x, $y, $button = 'left', $times = 1, $delay = 250)
        Local $ix
        Local $lParam = BitOR(BitAND($x, 0xFFFF), $y * 0x10000)
        $button = StringLower($button)
        If $button = "left" Then
                For $ix = 1 To $times
                        _PostMessage($hWnd, 0x200, 0, $lParam);WM_MOUSEMOVE
                        _PostMessage($hWnd, 0x201, 1, $lParam);WM_LBUTTONDOWN
                        _PostMessage($hWnd, 0x202, 0, $lParam);WM_LBUTTONUP
                        If $ix < $times Then Sleep($delay)
                Next
        ElseIf $button = "right" Then
                For $ix = 1 To $times
                        _PostMessage($hWnd, 0x200, 0, $lParam);WM_MOUSEMOVE
                        _PostMessage($hWnd, 0x204, 2, $lParam);WM_RBUTTONDOWN
                        _PostMessage($hWnd, 0x205, 0, $lParam);WM_RBUTTONUP
                        If $ix < $times Then Sleep($delay)
                Next
        EndIf
EndFunc   ;==>_MouseClick
 
Func _SendKeys($hWnd, $iKeys,  $isBack = True)
        $iKeys = StringUpper($iKeys)
        If $hWnd <= 0 Or $iKeys = '' Then Return
        Local $ShiftDown = False, $CtrlDown = False, $AltDown = False, $CompKey = False
        
        If StringInStr($iKeys, '_') Then $CompKey = True ;'_'Ϊ��ϼ��ָ���
        If $CompKey Then
                If StringInStr($iKeys, '{SHIFT}') Then
                        Send('{SHIFTDOWN}')
                        $ShiftDown = True
                EndIf
                If StringInStr($iKeys, '{CTRL}') Then
                        Send('{CTRLDOWN}')
                        $CtrlDown = True
                EndIf
                If StringInStr($iKeys, '{ALT}') Then
                        Send('{ALTDOWN}')
                        $AltDown = True
                EndIf
                $K = StringSplit($iKeys, '_', 1)
                If @error Then Return
                $iKeys = $K[$K[0]]
        EndIf
        If $isBack Then
                $iKeys = _IntVirtualKey($iKeys)
                $MapVK = _MapVirtualKey($iKeys, 0)
                $lParam = BitOR($MapVK * 0x10000, BitAND(1, 0xFFFF))
                _PostMessage($hWnd, 0x100, $iKeys, $lParam);WM_KEYDOWN
                _PostMessage($hWnd, 0x101, $iKeys, $lParam + 0xC0000000);WM_KEYUP
        Else
                $iKeys = StringLower($iKeys)
                ;Send('{ASC 0' & $iKeys & '}')
                Send($iKeys)
        EndIf
        If $AltDown Then Send('{ALTUP}');����alt
        If $CtrlDown Then Send('{CTRLUP}');����ctrl
        If $ShiftDown Then Send('{SHIFTUP}');����shift
EndFunc   ;==>_SendKeys
 
Func _MapVirtualKey($iCode, $iType)
        Local $Ret = DllCall('user32.dll', 'uint', 'MapVirtualKeyW', 'uint', $iCode, 'uint', $iType)
        If (@error) Or (Not $Ret[0]) Then Return ''
        Return $Ret[0]
EndFunc   ;==>_MapVirtualKey
 
Func _IntVirtualKey($iKey)
        If $iKey == '{BS}' Then Return 0x08
        If $iKey == '{TAB}' Then Return 0x09
        If $iKey == '{SHIFT}' Then Return 0x10
        If $iKey == '{CTRL}' Then Return 0x11
        If $iKey == '{ENTER}' Then Return 0x0D
        If $iKey == '{CLEAR}' Then Return 0x0C
        If $iKey == '{ALT}' Then Return 0x12
        If $iKey == '{PAUSE}' Then Return 0x13
        If $iKey == '{CAPS LOCK}' Then Return 0x14
        If $iKey == '{ESC}' Then Return 0x1B
        If $iKey == '{SPACEBAR}' Then Return 0x20
        If $iKey == '{PAGEUP}' Then Return 0x21
        If $iKey == '{PAGEDOWN}' Then Return 0x22
        If $iKey == '{END}' Then Return 0x23
        If $iKey == '{HOME}' Then Return 0x24
        If $iKey == '{LEFT}' Then Return 0x25
        If $iKey == '{UP}' Then Return 0x26
        If $iKey == '{RIGHT}' Then Return 0x27
        If $iKey == '{DOWN}' Then Return 0x28
        If $iKey == '{SELECT}' Then Return 0x29
        If $iKey == '{PRINT}' Then Return 0x2A
        If $iKey == '{EXECUTE}' Then Return 0x2B
        If $iKey == '{PRINTSCREEN}' Then Return 0x2C
        If $iKey == '{INS}' Then Return 0x2D
        If $iKey == '{DEL}' Then Return 0x2E
        If $iKey == '{F1}' Then Return 0x70
        If $iKey == '{F2}' Then Return 0x71
        If $iKey == '{F3}' Then Return 0x72
        If $iKey == '{F4}' Then Return 0x73
        If $iKey == '{F5}' Then Return 0x74
        If $iKey == '{F6}' Then Return 0x75
        If $iKey == '{F7}' Then Return 0x76
        If $iKey == '{F8}' Then Return 0x77
        If $iKey == '{F9}' Then Return 0x78
        If $iKey == '{F10}' Then Return 0x79
        If $iKey == '{F11}' Then Return 0x7A
        If $iKey == '{F12}' Then Return 0x7B
        If $iKey == '{F13}' Then Return 0x7C
        If $iKey == '{F14}' Then Return 0x7D
        If $iKey == '{F15}' Then Return 0x7E
        If $iKey == '{F16}' Then Return 0x7F
        If $iKey == '{NUM LOCK}' Then Return 0x90
        If $iKey == '{SCROLL LOCK}' Then Return 0x91
        If $iKey == '*' Then Return 0x6A
        If $iKey == '+' Then Return 0x6B
        If $iKey == '-' Then Return 0x6D ;BD
        If $iKey == '.' Then Return 0x6E
        If $iKey == '/' Then Return 0x6F
        If $iKey == ';' Then Return 0xBA
        If $iKey == '=' Then Return 0xBB
        If $iKey == ',' Then Return 0xBC
        If $iKey == '`' Then Return 0xC0
        If $iKey == '[' Then Return 0xDB
        If $iKey == '\' Then Return 0xDC
        If $iKey == ']' Then Return 0xDD
        Return Asc($iKey)
EndFunc   ;==>_MakeVirtualKey
 
Func _PostMessage($hWnd, $iMsg, $iwParam, $ilParam)
        DllCall("user32.dll", "bool", "PostMessage", "hwnd", $hWnd, "uint", $iMsg, "wparam", $iwParam, "lparam", $ilParam)
EndFunc   ;==>_WinAPI_PostMessage
