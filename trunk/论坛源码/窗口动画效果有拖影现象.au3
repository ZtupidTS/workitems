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
#PRE_UseX64=n
#PRE_Res_requestedExecutionLevel=None
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <GuiButton.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Constants.au3>

Opt("MustDEClareVars", 1)
Opt("GUIOnEventMode", 1)

Local $MSGWIN, $Lbl[5]
Local $GetPos = WinGetPos("[class:Shell_TrayWnd]") ;��ȡ����������Ϣ

Local $gu_Main = GUICreate("���Դ���", 520, 522, -1, -1)
GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui")
GUISetOnEvent($GUI_EVENT_MINIMIZE, "_Gui")
Local $gu_Main_But1 = GUICtrlCreateButton("��㼸�� ", 200, 200, 100, 32)
GUICtrlSetOnEvent($gu_Main_But1, "_Gui")

GUISetState(@SW_SHOW)

While 1
        Sleep(100)
WEnd


Func _Gui()
        Switch @GUI_CtrlId
                Case $GUI_EVENT_CLOSE
                        Switch @GUI_WinHandle
                                Case $gu_Main
                                        Exit
                                Case Else
                                        GUIDelete(@GUI_WinHandle)
                        EndSwitch
                Case $gu_Main_But1
                        _GETMSG("XP������Ӱ����win7��û�У���λ������û�кõĽ���취���������ˣ�", "��������")
        EndSwitch
EndFunc   ;==>_Gui


Func _GETMSG($sText, $sTitle);����֪ͨ����
        If $sTitle = "" Then $sTitle = "ϵͳ��Ϣ";Ĭ����Ϣ����
        FileInstall("Msgbg.jpg", @TempDir & "\Msgbg.jpg");���빫��屳��ͼƬ
        $MSGWIN = GUICreate("", 256, 111, @DesktopWidth - 256, @DesktopHeight - 111 - $GetPos[3], _
                        $WS_POPUP, $WS_EX_TOPMOST, WinGetHandle(AutoItWinGetTitle()));��������������
        GUICtrlCreatePic(@TempDir & "\Msgbg.jpg", 0, 0, 0, 0)
        GUICtrlSetState(-1, $GUI_DISABLE) ;����Ϊ����ͼƬ
        FileDelete(@TempDir & "\Msgbg.jpg");ɾ������ͼ
        $Lbl[1] = GUICtrlCreateLabel("", 240, 5, 10, 10);�رհ�ť
        GUICtrlSetOnEvent(-1, "_MSGWIN_Close")
        GUICtrlSetCursor(-1, 0)
        $Lbl[2] = GUICtrlCreateLabel($sTitle, 14, 32, 228, 12);������
        GUICtrlSetColor(-1, 0x1E5883)
        $Lbl[3] = GUICtrlCreateLabel($sText, 14, 52, 228, 24);��Ϣ��
        GUICtrlSetColor(-1, 0x3A90D9)
        $Lbl[4] = GUICtrlCreateLabel("", 50, 88, 228, 12);����ʱ��
        GUICtrlSetColor(-1, 0x1E5883)
        For $i = 1 To 3
                GUICtrlSetBkColor($Lbl[$i], $GUI_BKCOLOR_TRANSPARENT)
        Next
        
        DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $MSGWIN, "int", 1000, "long", 0x00040008);�����½�
        GUISetState(@SW_SHOWNA)
        _RoundGUI($MSGWIN, 0, 0, 5, 5) ;����Բ��
        
EndFunc   ;==>_GETMSG

Func _MSGWIN_Close()
        Local $hWin = @GUI_WinHandle, $aWPos = WinGetPos($hWin), $i, $ts
        If Not IsArray($aWPos) Then Return
        For $i = $aWPos[1] + 10 to @DesktopHeight
                WinMove($hWin, '', DeFault, $i)
                $ts = TimerInIt()
                Do
                Until TimerDiff($ts) > 5
        Next
        If IsHWnd($hWin) Then GUIDelete($hWin)
EndFunc   ;==>_MSGWIN_Close



Func _RoundGUI($h_win, $i_x1, $i_y1, $i_x3, $i_y3) ;����Բ��API
        Local $pos, $ret, $ret2
        $pos = WinGetPos($h_win)
        $ret = DllCall("gdi32.dll", "long", "CreateRoundRectRgn", "long", $i_x1, "long", $i_y1, "long", $pos[2], "long", $pos[3], "long", $i_x3, "long", $i_y3)
        If $ret[0] Then
                $ret2 = DllCall("user32.dll", "long", "SetWindowRgn", "hwnd", $h_win, "long", $ret[0], "int", 1)
                If $ret2[0] Then
                        Return 1
                Else
                        Return 0
                EndIf
        Else
                Return 0
        EndIf
EndFunc   ;==>_RoundGUI