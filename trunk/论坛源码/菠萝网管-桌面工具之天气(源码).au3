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

#NoTrayIcon
#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=C:\WINDOWS\system32\SHELL32.dll|-131
#AutoIt3Wrapper_Res_Fileversion=2.0.0.3
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=p
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include-once


#include <WindowsConstants.au3>
#include <Constants.au3>
#include <GUIConstantsEx.au3>
#include <GdiPlus.au3>
#include <WinAPIEx.au3>
#include <WinAPI.au3>
#include <String.au3>
#include <INet.au3>
Opt("WinDetectHiddenText", 1) ;���Բ��Ҵ��������ı�
Opt("GUIOnEventMode", 1)
If $CmdLine[0] = 0 Then Exit
$Positions = StringSplit($CmdLine[1], ",");1:��λ����;2: Y���׼ֵ�� 3:����Ӧ����ʾ���桯�Ĵ��ھ�����ɸ����̻�ȡ�����ݹ�����

FileInstall("Wallpaper.png", @TempDir & "\Wallpaper.png", 0)
FileInstall("colse.png", @TempDir & "\colse.png", 0)
FileInstall("face\����.png", @TempDir & "\����.png", 0)
FileInstall("face\����.png", @TempDir & "\����.png", 0)
FileInstall("face\����.png", @TempDir & "\����.png", 0)
FileInstall("face\��ѩ.png", @TempDir & "\��ѩ.png", 0)
FileInstall("face\С��.png", @TempDir & "\С��.png", 0)
FileInstall("face\Сѩ.png", @TempDir & "\Сѩ.png", 0)
FileInstall("face\��.png", @TempDir & "\��.png", 0)
FileInstall("face\��.png", @TempDir & "\��.png", 0)
FileInstall("face\����.png", @TempDir & "\����.png", 0)

;���ڸ߶�
Global $iHeight = 158 ;���ڹ̶��߶�
Global $msgWnd
Global Const $hWndManager = $Positions[3]; �����򴫵ݹ����Ĵ��ھ�����ǲ���Ӧ����ʾ���桯�ľ��
;Global $hWndManager = WinGetHandle("Program Manager") ;��ȡ���洰�ھ����

;#cs
Switch $Positions[1] ;���㴰��λ��
        Case 0
                $iX = 0
                $iY = 0 + $Positions[2]
        Case 1
                $iX = @DesktopWidth / 2 - 250 / 2
                $iY = 0 + $Positions[2]
        Case 2
                $iX = @DesktopWidth - 250
                $iY = 0 + $Positions[2]
        Case 3
                $iX = @DesktopWidth / 2 - 250 / 2
                $iY = @DesktopHeight / 2 - $iHeight / 2
        Case 4
                $iX = @DesktopWidth / 2 - 250 / 2
                $iY = @DesktopHeight - $iHeight - $Positions[2]
EndSwitch
;#ce
;$iX = @DesktopWidth - @DesktopWidth*0.2
;$iY = 5
;����������
$mWindow = GUICreate("��ʾ����", 250, 200, $iX, $iY, $WS_POPUP, $WS_EX_MDICHILD + $WS_EX_LAYERED, $hWndManager);����ʽ����(�ޱ�����)�����ߴ���(��������) + �ֲ㴰��
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")

;====================================================================================
$wEar = GetWeather();��ȡ������Ϣ
;====================================================================================
_GDIPlus_Startup()
;���ض��㴰�ڱ���ͼƬ
$hImage = ResizeImage(@TempDir & "\Wallpaper.png", 250, $iHeight) ;�����ı���ͼ�����
$hGraphic = _GDIPlus_ImageGetGraphicsContext($hImage);����ͼ����
_GDIPlus_GraphicsSetSmoothingMode($hGraphic, 2);����ͼ�ε�ƽ���ȣ�ʹͼ�ε�ͼ���п���ݹ���
DllCall($ghGDIPDll, "int", "GdipSetTextRenderingHint", "hwnd", $hGraphic, "int", 4);���������ƽ���ȣ�ʹͼ�ε������п���ݹ���


;���һ������
$Fonts = '���ǰ������'
$FontCoror = 0xff00ff00
_SendTextTOWallpaper($hGraphic, "SOSO����:" & $wEar[0][0], $FontCoror, $Fonts, 20, 1, 10, 10, 0);�������,�ı�����ɫ�����壬��С����ʽ����࣬�ϲ࣬��׼��

;���һ������
$Fonts = '����'
$FontCoror = 0xffffffff
_SendTextTOWallpaper($hGraphic, $wEar[0][2] & @CRLF & $wEar[0][3], $FontCoror, $Fonts, 20, 1, 125, 40, 0);�������,�ı�����ɫ�����壬��С����ʽ����࣬�ϲ࣬��׼��

;����ֱ��
$hPen = _GDIPlus_PenCreate(0x33000000, 3, 2)
_GDIPlus_GraphicsDrawLine($hGraphic, 0, 95, 250, 95, $hPen)
_GDIPlus_PenDispose($hPen); �����Դ

;���һ������
$Fonts = '����'
$FontCoror = 0xffffffff
_SendTextTOWallpaper($hGraphic, $wEar[1][0] & @CRLF & $wEar[1][2] & @CRLF & $wEar[1][3], $FontCoror, $Fonts, 12, 1, 60, 100, 0);�������,�ı�����ɫ�����壬��С����ʽ����࣬�ϲ࣬��׼��

;����ֱ��
$hPen = _GDIPlus_PenCreate(0x33000000, 3, 2)
_GDIPlus_GraphicsDrawLine($hGraphic, 125, 95, 125, $iHeight, $hPen)
_GDIPlus_PenDispose($hPen); �����Դ


;���һ������
$Fonts = '����'
$FontCoror = 0xffffffff
_SendTextTOWallpaper($hGraphic, $wEar[2][0] & @CRLF & $wEar[2][2] & @CRLF & $wEar[2][3], $FontCoror, $Fonts, 12, 1, 60 + 120, 100, 0);�������,�ı�����ɫ�����壬��С����ʽ����࣬�ϲ࣬��׼��


;========================================
;���ñ���ͼƬ
SetBitmap($mWindow, $hImage, 255) ;���ñ���ͼƬ
;========================================

_GDIPlus_GraphicsDispose($hGraphic);�ͷ�ͼ����
_WinAPI_DeleteObject($hImage) ;�ͷ�ͼ�����
_GDIPlus_Shutdown();�ر�GDI+
GUISetState(@SW_SHOW, $mWindow) ;�����ڼ������
;-------------------------------------------------
;���عرմ��ڿؼ� MDI����
$ColseW = GUICreate("�ر�", 32, 32, 220+12, 10, $WS_POPUP, $WS_EX_MDICHILD + $WS_EX_LAYERED, $mWindow)
$Ico2 = ResizeImage(@TempDir & "\colse.png", 16, 16)
SetBitmap($ColseW, $Ico2, 127)
GUISetState(@SW_SHOW, $ColseW)
;---------------------------------------------
$toDay = GUICreate($wEar[0][1], 10, 10, 18 + 5, 20 + 10, $WS_POPUP, $WS_EX_MDICHILD + $WS_EX_LAYERED, $mWindow)
$Icos = ResizeImage(@TempDir & "\" & $wEar[0][1] & ".png", 68, 68)
SetBitmap($toDay, $Icos, 127)
GUISetState(@SW_SHOW, $toDay)
$Tomorrow = GUICreate($wEar[1][1], 10, 10, 10, 100, $WS_POPUP, $WS_EX_MDICHILD + $WS_EX_LAYERED, $mWindow)
$Icos = ResizeImage(@TempDir & "\" & $wEar[1][1] & ".png", 48, 48)
SetBitmap($Tomorrow, $Icos, 127)
GUISetState(@SW_SHOW, $Tomorrow)
$aTomorrow = GUICreate($wEar[2][1], 10, 10, 130, 100, $WS_POPUP, $WS_EX_MDICHILD + $WS_EX_LAYERED, $mWindow)
$Icos = ResizeImage(@TempDir & "\" & $wEar[2][1] & ".png", 48, 48)
SetBitmap($aTomorrow, $Icos, 127)
GUISetState(@SW_SHOW, $aTomorrow)
;------------------------------------------
;ע����Ϣ����
GUIRegisterMsg($WM_NCHITTEST, 'WM_NCHITTEST');��꾭��MID����-����
GUIRegisterMsg($WM_LBUTTONDOWN, "WM_LBUTTONDOWN") ;������MID���� �ͻ���-����
;-------------------------------------------
_Sender() ;�����洰�� Gui �߶� �� ���ھ��
;----------------------------
While 1
        Sleep(1000)
WEnd
Func CLOSEClicked()
        Exit
EndFunc   ;==>CLOSEClicked
;============================================
;��������
Func _Sender() ;���ش��ڸ߶ȸ�������
        Local $hMapping, $pAddress, $tData, $Text
        $hMapping = _WinAPI_OpenFileMapping('MyFileMapping');�������ָ���ļ�������δ�����ľ������
        $pAddress = _WinAPI_MapViewOfFile($hMapping);���ļ�ӳ��ӳ������ý��̵ĵ�ַ�ռ�
        $tData = DllStructCreate('HWND;wchar[1024]', $pAddress);������Ϣ���ݽṹ
        $Text = $iHeight
        DllStructSetData($tData, 1, $mWindow)
        DllStructSetData($tData, 2, $Text)
        _WinAPI_UnmapViewOfFile($pAddress);�ӵ��ý��̵ĵ�ַ�ռ�ȡ�����ļ���ӳ����ͼ
        _WinAPI_CloseHandle($hMapping);�ر�һ���򿪵Ķ���ľ��
EndFunc   ;==>_Sender
;======================================================
;ϵͳ��Ϣ
;��꾭��MID����-����
Func WM_NCHITTEST($hWnd, $Msg, $wParam, $lParam)
        Switch $hWnd
                Case $mWindow
                        Switch $msgWnd
                                Case $ColseW
                                        SetBitmap($ColseW, $Ico2, 127)
                                Case $toDay
                                        $Icos = ResizeImage(@TempDir & "\" & WinGetTitle($msgWnd) & ".png", 68, 68)
                                        SetBitmap($toDay, $Icos, 127)
                                Case ''
                                Case Else
                                        $Icos = ResizeImage(@TempDir & "\" & WinGetTitle($msgWnd) & ".png", 48, 48)
                                        SetBitmap($msgWnd, $Icos, 127)
                        EndSwitch
                        ToolTip("")
                Case $ColseW
                        SetBitmap($hWnd, $Ico2, 255)
                        $wh = MouseGetPos()
                        ToolTip("�ر�", $wh[0] - 20, $wh[1] + 10, "", 0, 2)
                        $msgWnd = $hWnd
                Case $toDay
                        $Icos = ResizeImage(@TempDir & "\" & WinGetTitle($hWnd) & ".png", 68, 68)
                        SetBitmap($hWnd, $Icos, 255)
                        ToolTip(WinGetTitle($hWnd))
                        $msgWnd = $hWnd
                Case Else
                        $Icos = ResizeImage(@TempDir & "\" & WinGetTitle($hWnd) & ".png", 48, 48)
                        SetBitmap($hWnd, $Icos, 255)
                        ToolTip(WinGetTitle($hWnd))
                        $msgWnd = $hWnd
        EndSwitch
EndFunc   ;==>WM_NCHITTEST
;������MID���� �ͻ���-����
Func WM_LBUTTONDOWN($hWnd, $Msg, $wParam, $lParam)
        If $hWnd = $ColseW Then
                Exit
        EndIf
EndFunc   ;==>WM_LBUTTONDOWN
;======================================================
;����ͼƬ����
Func ResizeImage($fImage, $iW, $iH, $fExt = "png", $fPart = ".resized.")
        If $fImage = "" Then Return SetError(1, 0, 0)
        If Not FileExists($fImage) Then Return SetError(2, 0, 0)
        Local $iOutputFormats = "jpg,png,bmp,gif,tif"
        If Not StringInStr($iOutputFormats, $fExt) Then
                If $fExt <> -1 Then
                        $fExt = "png"
                Else
                        If Not StringInStr($iOutputFormats, StringRight($fImage, 3)) Then
                                $fExt = "png"
                        Else
                                $fExt = StringRight($fImage, 3)
                        EndIf
                EndIf
        EndIf
        Local $fName = StringRegExpReplace($fImage, ".*\\(.*).{4}", "$1")
        Local $declared = True
        If Not $ghGDIPDll Then
                _GDIPlus_Startup()
                $declared = False
        EndIf
        Local $hImageFromFile = _GDIPlus_ImageLoadFromFile($fImage)
        Local $iWidth = _GDIPlus_ImageGetWidth($hImageFromFile)
        Local $iHeight = _GDIPlus_ImageGetHeight($hImageFromFile)
        Local $x, $y
        If Not $iW And Not $iH Then
                $iW = 96
                $iH = 96
        ElseIf $iW And Not $iH Then
                $x = $iW / $iWidth
                $iH = Int($iHeight * $x)
        ElseIf Not $iW And $iH Then
                $y = $iH / $iHeight
                $iW = Int($iWidth * $y)
        EndIf
        Local $hImageThumbnail = DllCall($ghGDIPDll, "uint", "GdipGetImageThumbnail", "handle", $hImageFromFile, "uint", $iW, "uint", $iH, "int*", 0, "ptr", 0, "ptr", 0)
        If @error Then
                _GDIPlus_ImageDispose($hImageFromFile)
                If Not $declared Then _GDIPlus_Shutdown()
                Return SetError(3, 0, 0)
        EndIf
        $hImageThumbnail = $hImageThumbnail[4]
        Return $hImageThumbnail
EndFunc   ;==>ResizeImage
;����ͼ��
Func _addico($hGraphic, $ico, $iX, $iY, $Width, $Height)
        _GDIPlus_GraphicsDrawImageRect($hGraphic, $ico, $iX, $iY, $Width, $Height);����ͼ��
        _GDIPlus_ImageDispose($ico);�ͷ�ͼ����Դ
EndFunc   ;==>_addico
;��������
Func _SendTextTOWallpaper($hGraphic, $Text, $Color, $Fonst, $FontCreate, $FontStyle, $Width, $Height, $Align)
        $hBrush = _GDIPlus_BrushCreateSolid($Color);����ʵ�Ļ��ʶ�������Alphaͨ��ֵΪ255��RGBֵΪ0xff00ff
        $hFormat = _GDIPlus_StringFormatCreate();�����ַ�����ʽ����
        $hFamily = _GDIPlus_FontFamilyCreate($Fonst);��������Ϊ"΢���ź�"�����������
        $hFont = _GDIPlus_FontCreate($hFamily, $FontCreate, $FontStyle, 2);�����洴���������崴��һ�������СΪ20������+б�壬�������Ϊ���ص��������������պ���Ҫ����Ӱ�쵽������ͼ���ϵ�λ��
        $tLayout = _GDIPlus_RectFCreate($Width, $Height, 0, 0);���� $tagGDIPRECTF ���ݽṹ
        _GDIPlus_StringFormatSetAlign($hFormat, $Align)
        $TestText = _GDIPlus_GraphicsMeasureString($hGraphic, $Text, $hFont, $tLayout, $hFormat);�������洴�������塢�ַ�������Ϣ�����ַ�����ͼ���еĳߴ磬�Ա���ͼ���л���
        _GDIPlus_GraphicsDrawStringEx($hGraphic, $Text, $hFont, $TestText[0], $hFormat, $hBrush);��ͼ���л������洴�����ַ�������
        ;�ͷ���Դ����
        _GDIPlus_FontDispose($tLayout)
        _GDIPlus_FontFamilyDispose($hFamily)
        _GDIPlus_StringFormatDispose($hFormat)
        _GDIPlus_BrushDispose($hBrush)
EndFunc   ;==>_SendTextTOWallpaper
;���ñ���ͼƬ
Func SetBitmap($hGUI, $hImage, $iOpacity)
        Local $hScrDC, $hMemDC, $hBitmap, $hOld, $pSize, $tSize, $pSource, $tSource, $pBlend, $tBlend
        $hScrDC = _WinAPI_GetDC(0)
        $hMemDC = _WinAPI_CreateCompatibleDC($hScrDC)
        $hBitmap = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hImage)
        $hOld = _WinAPI_SelectObject($hMemDC, $hBitmap)
        $tSize = DllStructCreate($tagSIZE)
        $pSize = DllStructGetPtr($tSize)
        DllStructSetData($tSize, "X", _GDIPlus_ImageGetWidth($hImage))
        DllStructSetData($tSize, "Y", _GDIPlus_ImageGetHeight($hImage))
        $tSource = DllStructCreate($tagPOINT)
        $pSource = DllStructGetPtr($tSource)
        $tBlend = DllStructCreate($tagBLENDFUNCTION)
        $pBlend = DllStructGetPtr($tBlend)
        DllStructSetData($tBlend, "Alpha", $iOpacity)
        DllStructSetData($tBlend, "Format", 1)
        _WinAPI_UpdateLayeredWindow($hGUI, $hScrDC, 0, $pSize, $hMemDC, $pSource, 0, $pBlend, $ULW_ALPHA)
        _WinAPI_ReleaseDC(0, $hScrDC)
        _WinAPI_SelectObject($hMemDC, $hOld)
        _WinAPI_DeleteObject($hBitmap)
        _WinAPI_DeleteDC($hMemDC)
EndFunc   ;==>SetBitmap
;��ȡ������Ϣ
Func GetWeather()
        Dim $s_URL = "http://www.soso.com/tb.q?cid=tb.tq"
        Local $Text[3][4]
        $soure = _INetGetSource($s_URL);��ȡԴ��
        $temp = StringLeft(StringMid($soure, StringInStr($soure, '<body>') + 6), StringInStr(StringMid($soure, StringInStr($soure, '<body>') + 6), '<div style="visibility:hidden;">') - 1)
        For $i = 1 To 3
                $Time = StringLeft(StringMid($temp, StringInStr($temp, '<div class="today">', 0, $i) + 19), StringInStr(StringMid($temp, StringInStr($temp, '<div class="today">', 0, $i) + 19), '</div><div class="weather">', 0, 1) - 1)
                $Weather = StringLeft(StringMid($temp, StringInStr($temp, '>&nbsp;', 0, $i) + 7), StringInStr(StringMid($temp, StringInStr($temp, '>&nbsp;', 0, $i) + 7), '<div', 0, 1) - 1)
                $Temperature = StringLeft(StringMid($temp, StringInStr($temp, '<div class="pd_l">', 0, $i) + 18), StringInStr(StringMid($temp, StringInStr($temp, '<div class="pd_l">', 0, $i) + 18), '<br/>', 0, 1) - 1)
                $WindPower = StringLeft(StringMid($temp, StringInStr($temp, '<br/>', 0, $i) + 5), StringInStr(StringMid($temp, StringInStr($temp, '<br/>', 0, $i) + 5), '</div>', 0, 1) - 1)
                ;$Text &= $Time & @CRLF & $Weather & @CRLF & $Temperature & @CRLF & $WindPower & '|'
                $Text[$i - 1][0] = $Time
                $Text[$i - 1][1] = $Weather
                $Text[$i - 1][2] = $Temperature
                $Text[$i - 1][3] = $WindPower
        Next
        Return $Text
EndFunc   ;==>GetWeather