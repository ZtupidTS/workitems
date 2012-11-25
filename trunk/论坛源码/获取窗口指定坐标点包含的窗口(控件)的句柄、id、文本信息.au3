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

Func _GetWinInfoFromPoint($title, $text, $_x, $_y, $RtFlag = 1)
        ;afan��ʾ�����������ڻ�ȡ����ָ�����������Ĵ���(�ؼ�)�ľ����id���ı���Ϣ
        ;$title - ���ڱ���(Ҳ��ֱ��ʹ�þ��)
        ;$text - �����ı�(���$titleʹ�þ����ò���������)
        ;$_x - �ؼ���Դ�������x
        ;$_y - �ؼ���Դ�������y

        ;$RtFlag - ������Ϣ��־[��ѡ����]
        ;����������= 1 ���ش���(��ؼ�)���(Ĭ��)
        ;����������= 2 ���ؿؼ����ڲ���ʶ��(id)
        ;����������= 3 ���ؿؼ��ı�

        ;����ֵ��  @Error =0 ���ݷ��ر�־�����ַ�����Ϣ
        ;����������@Error =1:δƥ�䵽Ŀ�괰�ڣ�=2:�����������=3:����id����=4:ʰȡ�ؼ��ı�����

        Local $hWnd = Hwnd($title)
        If Not IsHwnd($hWnd) Then
                $hWnd = WinGetHandle($title, $text)
                If @Error Then Return SetError(1, '', '')
        EndIf
        Local $tPoint = DllStructCreate('long X;long Y')
        DllStructSetData($tPoint, 1, $_x)
        DllStructSetData($tPoint, 2, $_y)
        DllCall('user32.dll', 'bool', 'ClientToScreen', 'hwnd', $hWnd, 'ptr', DllStructGetPtr($tPoint))
        Local $tPointCast = DllStructCreate('int64', DllStructGetPtr($tPoint))
        Local $aRt0 = DllCall('user32.dll', 'hwnd', 'WindowFromPoint', 'int64', DllStructGetData($tPointCast, 1))
        If @error Then Return SetError(2, '', '')
        $hStatic = $aRt0[0]
        Switch $RtFlag
                Case 1
                        Return $hStatic
                Case 2
                        Local $aRt1 = DllCall('user32.dll', 'int', 'GetDlgCtrlID', 'hwnd', $hStatic)
                        If @error Then Return SetError(3, '', '')
                        Return $aRt1[0]
                Case 3
                        Local $sTxt = ControlGetText($hWnd, '', $hStatic)
                        If @error Then Return SetError(4, '', '')
                        Return $sTxt
        EndSwitch
EndFunc   ;==>_GetWinInfoFromPoint