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
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <WinAPIEx.au3>
#include <Timers.au3>
 
Global $hGUI, $nButton, $GUIMsg, $Dx = 0, $iTimer;$Dx������������ȣ�$iTimer��ʱ����ʶ
Global $cWnd, $cH, $cW, $startxy = 10, $myWidth;$startxy�ǹ���������ʼλ�ã�$myWidth�ǹ���������
Example()
 
Func Example()
        $hGUI = GUICreate("�Ի水ť", 300, 200)
 
        $nButton = GUICtrlCreateButton("��������ť&X", 25, 25, 250, 40)
        $cWnd = _WinAPI_GetDlgItem($hGUI, $nButton);��ȡ��ť���
        $cH = _WinAPI_GetClientHeight($cWnd);��ť�� 
        $cW = _WinAPI_GetClientWidth($cWnd);��ť��
        $myWidth = $cW - $startxy * 2;�������������
        
        $nButton2 = GUICtrlCreateButton("������ť", 25, 75, 250, 40)
        GUISetState()
 
        While 1
                $GUIMsg = GUIGetMsg()
                
                Switch $GUIMsg
                        Case $GUI_EVENT_CLOSE
                                ExitLoop
                                
                        Case $nButton
                                GUICtrlSetState($nButton, $GUI_DISABLE)
                                $iTimer = _Timer_SetTimer($hGUI, 10, "DRAWDC");ÿ10������¹�����
                                
                        Case $nButton2
                                MsgBox(0, "�����Ϣ", "��ť2�����", -1, $hGUI)
                                
 
                EndSwitch
        WEnd
 
EndFunc   ;==>Example
 
Func DRAWDC($hWnd, $iMsg, $iTimerId, $iTime)
        $Dx += 1;��������һ
        If $Dx > 100 Then;������ �������ʱ������Ը��ť״̬
                $Dx = 0
                _Timer_KillTimer($hGUI, $iTimer)
                GUICtrlSetState($nButton, $GUI_ENABLE)
                GUICtrlSetState($nButton, $GUI_FOCUS)
                Return
        EndIf
        ;��ȡ��ťDC������������DC
        $hBtDC = _WinAPI_GetDC($cWnd)
        $hDC = _WinAPI_CreateCompatibleDC($hBtDC)
        $hSource = _WinAPI_CreateCompatibleBitmapEx($hBtDC, $myWidth, 3, _WinAPI_SwitchColor(_WinAPI_GetSysColor($COLOR_3DFACE)))
        $hSv = _WinAPI_SelectObject($hDC, $hSource)
        ;�ڼ���DC�ڻ����������
        $hBrush = _WinAPI_CreatePen($PS_INSIDEFRAME, 3, 0x0000ff)
        $hOldBrush = _WinAPI_SelectObject($hDC, $hBrush)
        _WinAPI_MoveTo($hDC, 0, 0)
        _WinAPI_LineTo($hDC, $myWidth, 0)
        _WinAPI_SelectObject($hDC, $hOldBrush)
        _WinAPI_DeleteObject($hBrush)
        ;�ڼ���DC�ϻ��������ϲ���ɫλ��
        $hBrush = _WinAPI_CreatePen($PS_SOLID, 3, 0x00ff00)
        $hOldBrush = _WinAPI_SelectObject($hDC, $hBrush)
        _WinAPI_MoveTo($hDC, 0, 0)
        _WinAPI_LineTo($hDC, $Dx * $myWidth / 100, 0)
        _WinAPI_SelectObject($hDC, $hOldBrush)
        _WinAPI_DeleteObject($hBrush)
        ;��������DC����ťDC�ʵ�λ��
        _WinAPI_BitBlt($hBtDC, $startxy, $cH - $startxy, $myWidth, 2, $hDC, 0, 0, $MERGECOPY)
        ;�ͷŲ���
        _WinAPI_SelectObject($hDC, $hSv)
        _WinAPI_DeleteObject($hSource)
        _WinAPI_DeleteDC($hDC)  
        _WinAPI_ReleaseDC($cWnd, $hBtDC)
EndFunc   ;==>DRAWDC