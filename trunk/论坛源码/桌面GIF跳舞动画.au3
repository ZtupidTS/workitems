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
#include <GdiPlusEx.au3>
#include <WindowsConstants.au3>
#Include <WinAPIEx.au3>
#include <APIConstants.au3>
 
OnAutoItExitRegister("_myexitfunc")
Opt("GUIOnEventMode", 1)
Opt("TrayMenuMode", 1)
Opt("TrayOnEventMode", 1)
;�޸�������ļ��������ʺ��Լ��Ķ���
Global $szFileName = @ScriptDir & "\2.gif"
Global $bPaint = 0, $ID_TIMER = 0;WMPAINT��־����ʱ��ID
Global $Guid = "{6AEDBD6D-3FB5-418A-83A6-7F45229DC872}";$GDIP_FRAMEDIMENSION_TIME���Ƕ�̬ͼ����
;���������ǣ�͢ʱ���ݣ���ǰ֡��֡��������ʱDC��DC������ͼƬ�����ߣ�GIFͼ����󣬶�ʱ������־��������ʾ��־
Global $pItem, $fcount, $frameCount, $hdcMem, $hbmp,$cxClient = 0, $cyClient = 0, $pimage = 0, $btimer = False, $bShow = True
Global $color;͸��ɫ
Global $pnid = DllStructCreate($tagNOTIFYICONDATA);����ͼ��ṹ
DllStructSetData($pnid, 'ID', 1);1Ϊ��ǰͼ��
DllStructSetData($pnid, 'Size', DllStructGetSize($pnid))
DllStructSetData($pnid, 'hWnd', WinGetHandle(AutoItWinGetTitle()))
DllStructSetData($pnid, 'Flags', $NIF_ICON);���ó�ԱhIcon��Ч
 
;ע�ᴰ���Դ�����
Global $hGifCallback = DllCallbackRegister("My_GifProc", "int", "hWnd;uint;wparam;lparam")
Global $tGifCallback = DllCallbackGetPtr($hGifCallback)
_GDIPlus_Startup()
 
$hGUI = GUICreate("GIF", 0, 0, -1, -1, $WS_POPUP, BitOR($WS_EX_TOPMOST, $WS_EX_TOOLWINDOW));, WinGetHandle("[CLASS:Progman]"))
GUISetOnEvent($GUI_EVENT_CLOSE, "_myexitfunc")
Global $GifCallProc = _WinAPI_SetWindowLong($hGUI, -4, $tGifCallback)
GUISetState()
;�˵�
$OptionsDummy = GUICtrlCreateDummy()
$OptionsContext = GUICtrlCreateContextMenu($OptionsDummy)
$OptionsCommon = GUICtrlCreateMenuItem("���ش���", $OptionsContext)
GUICtrlSetOnEvent(-1, "_show")
$OptionsFile = GUICtrlCreateMenuItem("ѡ��GifͼƬ", $OptionsContext)
GUICtrlSetOnEvent(-1, "_selectfile")
GUICtrlCreateMenuItem("", $OptionsContext)
$OptionsExit = GUICtrlCreateMenuItem("�˳�", $OptionsContext)
GUICtrlSetOnEvent(-1, "_myexitfunc")
;���̲˵�
Global $tshow = TrayCreateItem("���ش���")
TrayItemSetOnEvent(-1, "_show")
Global $tfile = TrayCreateItem("ѡ��GifͼƬ")
TrayItemSetOnEvent(-1, "_selectfile")
TrayCreateItem("")
Global $tExit = TrayCreateItem("�˳�")
TrayItemSetOnEvent(-1, "_myexitfunc")
;��Ĭ��gifͼƬ
OpenFile($hGUI, $szFileName)
 
While 1
        Sleep(10)
WEnd
 
;�˳�����
Func _myexitfunc()
        _WinAPI_SetWindowLong($hGUI, -4, $GifCallProc)
        _GDIPlus_ImageDispose($pimage)
        _GDIPlus_Shutdown()
        Exit
EndFunc   ;==>_myexitfunc
 
;��������
Func _show()
        If $bShow Then
                $bShow = False
                TrayItemSetText($tshow, "��ʾ����")
                GUISetState(@SW_HIDE)
        Else
                $bShow = True
                TrayItemSetText($tshow, "���ش���")
                GUISetState(@SW_SHOW)
        EndIf
EndFunc   ;==>_show
 
;ѡ���ļ�
Func _selectfile()
        Local $var = FileOpenDialog("��ѡ��һ��ͼ���ļ���", @ScriptDir & "\", "ͼ���ļ� (*.gif;*.jpg;*.png;*.bmp;*.tif)")
        If @error Then
                MsgBox(4096, "", "û��ѡ���ļ�!")
                Return 0
        EndIf
        OpenFile($hGUI, $var)
EndFunc   ;==>_selectfile
 
;���ڴ�����
Func My_GifProc($hWnd, $Msg, $wParam, $lParam)
        Switch $Msg
                Case 0x000F;WM_PAINT
                        If $bPaint = 0 Then
                                Local $tPAINTSTRUCT, $hdc
                                $bPaint += 1
                                $hdc = _WinAPI_BeginPaint($hWnd, $tPAINTSTRUCT)
                                OnPaint($hdc)
                                _WinAPI_EndPaint($hWnd, $tPAINTSTRUCT)
                                $bPaint -= 1
                                Return 0
                        EndIf
                Case 0x0113;$WM_TIMER
                        GoNext();����һ֡
                        If $bShow Then
                                $hdc = _WinAPI_GetDC($hWnd)
                                OnPaint($hdc)
                                _WinAPI_ReleaseDC($hWnd, $hdc)
                        EndIf
                        ModifyIcon($hWnd)
                        _WinAPI_KillTimer($hWnd, $ID_TIMER)
                        _WinAPI_SetTimer($hWnd, $ID_TIMER, GetPause(), 0) ;��GetPause()�õ�͢ʱ���������ö�ʱ��
                        Return 0;
                Case 0x0201;WM_LBUTTONDOWN�������������������״̬�������ڴ����ƶ�
                        _WinAPI_PostMessage($hWnd, $WM_NCLBUTTONDOWN, $HTCAPTION, _WinAPI_MakeLong(_WinAPI_GetMousePosX(True, $hWnd), _WinAPI_GetMousePosX(True, $hWnd)));
                        Return 0;
                Case 0x0203;$WM_LBUTTONDBLCLK
                        $hdc = _WinAPI_GetDC($hWnd)
                        $color = _WinAPI_GetPixel($hdc, _WinAPI_GetMousePosX(True, $hWnd), _WinAPI_GetMousePosX(True, $hWnd));��ȡ˫������ɫ
                        settrans($hWnd, $color);������ɫ���ô���͸��ɫ
                        _WinAPI_InvalidateRect($hWnd, 0, False);�ô����ػ�
                        _WinAPI_ReleaseDC($hWnd, $hdc)
                        Return 0 ;
                Case 0x0205;WM_RBUTTONUP
                        ShowMenu($hWnd, $OptionsContext);��ʾ�˵�
        EndSwitch
        Return _WinAPI_CallWindowProc($GifCallProc, $hWnd, $Msg, $wParam, $lParam)
EndFunc   ;==>My_GifProc
 
Func OpenFile($hWnd, $szFileName)
        If $btimer Then
                _WinAPI_KillTimer($hWnd, $ID_TIMER);
                $btimer = False;
        EndIf
        If $pimage Then _GDIPlus_ImageDispose($pimage)
        $pimage = _GDIPlus_ImageLoadFromFile($szFileName);���������ļ���ͼ�����
        ModifyIcon($hWnd)
        If Not $bShow Then
                _WinAPI_ShowWindow($hWnd, @SW_RESTORE);
                $bShow = True;
        EndIf
        If $pimage Then
                If DoInit($hWnd) Then ;����ֵΪTRUE���Ƕ�֡����ͼ��������Ҫ����������ʱ��
                        _WinAPI_SetTimer($hWnd, $ID_TIMER, GetPause(), 0) ;
                        $btimer = True ;
                EndIf
        EndIf
        _WinAPI_InvalidateRect($hWnd, 0, False);�ػ洰��
EndFunc   ;==>OpenFile
 
Func DoInit($hWnd);����ֵΪTRUE���Ƕ�֡����ͼ
        ;����ȫ�ֱ�����ֵ
        $aSize = _GDIPlus_ImageGetDimension($pimage)
        $imgWidth = $aSize[0]
        $imgHeight = $aSize[1]
        If $imgWidth <> $cxClient Or $imgHeight <> $cyClient Then
                If $hdcMem Then _WinAPI_DeleteDC($hdcMem)
                If $hbmp Then _WinAPI_DeleteObject($hbmp)
                $hdc = _WinAPI_GetDC($hWnd)
                $hdcMem = _WinAPI_CreateCompatibleDC($hdc)
                $hbmp = _WinAPI_CreateCompatibleBitmap($hdc, $imgWidth, $imgHeight);
                _WinAPI_SelectObject($hdcMem, $hbmp)
                _WinAPI_ReleaseDC($hWnd, $hdc)
                _WinAPI_MoveWindow($hWnd, (@DesktopWidth - $imgWidth) / 2, (@DesktopHeight - $imgHeight) / 2, $imgWidth, $imgHeight, True);
                $cxClient = $imgWidth
                $cyClient = $imgHeight
        EndIf
        ;��ȡ���Ͻ���ɫ������͸��
        $color = "0x" & Hex(_GDIPlus_BitmapGetPixel($pimage, 0, 0), 6)
        settrans($hWnd, $color)
        $fcount = 0;��ǰ֡��ʼ��Ϊ0
        $frameCount = _GDIPlus_ImageGetFrameCount($pimage, $Guid);��ȡ֡����
        If $frameCount > 1 Then
                $FrameDelay = _GDIPlus_ImageGetPropertyItem($pimage, $GDIP_PROPERTYTAGFRAMEDELAY)
;~              $id = DllStructGetData($FrameDelay, "id")
                $length = DllStructGetData($FrameDelay, "length")
;~              $type = DllStructGetData($FrameDelay, "type")
                $value = DllStructGetData($FrameDelay, "value")
                $pItem = DllStructCreate("dword[" & $length / 4 & "]", $value)
                Return True;����TRUEΪ��֡
        EndIf
        Return False;����FALSEΪ��֡��̬ͼ
EndFunc   ;==>DoInit
 
Func GetPause()
        $iDelay = DllStructGetData($pItem, 1, $fcount) * 10 ; 1 = 10 ����
        ; У����ʱ����
        If Not $iDelay Then $iDelay = 130 ; �� 0 ����Ϊ 130 ms
        If $iDelay < 50 Then $iDelay = 50 ; ��ֹCPUռ�ù��ߣ�������ʱ�����������ٶ�
        If $iDelay > 200 Then $iDelay = 200 ; ��ЩGIF���һ֡��ʱ���ݲ�׼����ֹ���ݲ�׼��GIF����
        Return $iDelay
EndFunc   ;==>GetPause
 
Func GoNext()
        $fcount += 1
        If $fcount = $frameCount Then $fcount = 0;     //����������һ֡���������¿�ʼ
        _GDIPlus_ImageSelectActiveFrame($pimage, $Guid, $fcount)
EndFunc   ;==>GoNext
 
Func OnPaint($hdc)
        $hGraphics = _GDIPlus_GraphicsCreateFromHDC($hdcMem)
        _GDIPlus_GraphicsClear($hGraphics, BitOR(BitShift(0xFF, -24), $color))
        _GDIPlus_GraphicsDrawImageRect($hGraphics, $pimage, 0, 0, $cxClient, $cyClient)
        _GDIPlus_GraphicsDispose($hGraphics)
        _WinAPI_BitBlt($hdc, 0, 0, $cxClient, $cyClient, $hdcMem, 0, 0, $SRCCOPY);
EndFunc   ;==>OnPaint
 
Func settrans($hWnd, $color)
        _WinAPI_SetWindowLong($hWnd, $GWL_EXSTYLE, BitOR($WS_EX_TOPMOST, $WS_EX_TOOLWINDOW, $WS_EX_LAYERED))
        _WinAPI_SetLayeredWindowAttributes($hWnd, $color, 0, $LWA_COLORKEY)
EndFunc   ;==>settrans
 
Func ShowMenu($hWnd, $nContextID)
        Local $arPos, $x, $y
        Local $hMenu = GUICtrlGetHandle($nContextID)
        $arPos = MouseGetPos()
        $x = $arPos[0]
        $y = $arPos[1]
        TrackPopupMenu($hWnd, $hMenu, $x, $y)
EndFunc   ;==>ShowMenu
 
Func TrackPopupMenu($hWnd, $hMenu, $x, $y)
        DllCall("user32.dll", "int", "TrackPopupMenuEx", "hwnd", $hMenu, "int", 0, "int", $x, "int", $y, "hwnd", $hWnd, "ptr", 0)
EndFunc   ;==>TrackPopupMenu
 
;�޸�����ͼ��
Func ModifyIcon($hWnd)
        Local $i = _WinAPI_GetSystemMetrics(11);$SM_CXICON=11��ȡͼ����
        Local $j = _WinAPI_GetSystemMetrics(12);$SM_CYICON=12��ȡͼ��߶�
        Local $hdc = _WinAPI_GetDC($hWnd)
        Local $hbitmap = _WinAPI_CreateCompatibleBitmap($hdc, $i, $j)
        Local $hdcMem = _WinAPI_CreateCompatibleDC($hdc)
        _WinAPI_SelectObject($hdcMem, $hbitmap);
        Local $hGraphics = _GDIPlus_GraphicsCreateFromHDC($hdcMem)
        _GDIPlus_GraphicsDrawImageRect($hGraphics, $pimage, 0, 0, $i, $j)
        _GDIPlus_GraphicsDispose($hGraphics)
        _WinAPI_DeleteDC($hdcMem)
        _WinAPI_ReleaseDC($hWnd, $hdc)
        $hIcon = _WinAPI_CreateIconIndirect($hbitmap, $hbitmap);����ͼ��
        DllStructSetData($pnid, 'hIcon', $hIcon);����ͼ�굽����ͼ��ṹ
        _WinAPI_ShellNotifyIcon($NIM_MODIFY, $pnid);������Ϣ����������״̬�����޸�״̬����ͼ��
        _WinAPI_DestroyIcon($hIcon)
        _WinAPI_DeleteObject($hbitmap)
EndFunc   ;==>ModifyIcon