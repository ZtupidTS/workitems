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

#include <APIConstants.au3>
#include <WinAPIEx.au3>
#include <GDIPlus.au3>
#include <GDIPlusEx.au3>
 
Global $rectx = 5, $recty = 5, $rectw = 100, $recth = 100
Global $brushx = $rectx, $brushy = $recty, $brushw = 50, $brushh = 50
GUICreate("��ʮ��֮�ֽ�1-���仭ˢ", 500, 400)
$nCtrlId = GUICtrlCreatePic("", 0, 0, 500, 200)
$hPicWnd = GUICtrlGetHandle($nCtrlId)
 
Global $rect[4][2], $brush[4][2]
init()
GUIRegisterMsg($WM_HSCROLL, "onHSCROLL")
GUISetState()
 
update()
 
While 1
        $Msg = GUIGetMsg()
        Switch $Msg
                Case -3
                        ExitLoop
        EndSwitch
WEnd
 
GUIDelete()
Exit
 
Func init()
        GUICtrlCreateLabel("�������X", 5, 205)
        $rect[0][0] = GUICtrlCreateSlider(60, 205, 100)
        GUICtrlSetLimit(-1, $rectx, 0)
        GUICtrlSetData(-1, $rectx)
        $rect[0][1] = GUICtrlCreateLabel("", 170, 205, 40, 25)
        GUICtrlSetData(-1, $rectx)
 
        GUICtrlCreateLabel("�������Y", 5, 235)
        $rect[1][0] = GUICtrlCreateSlider(60, 235, 100)
        GUICtrlSetLimit(-1, $recty, 0)
        GUICtrlSetData(-1, $recty)
        $rect[1][1] = GUICtrlCreateLabel("", 170, 235, 40, 25)
        GUICtrlSetData(-1, $recty)
 
        GUICtrlCreateLabel("���ο��W", 5, 265)
        $rect[2][0] = GUICtrlCreateSlider(60, 265, 100)
        GUICtrlSetLimit(-1, $rectw, 40)
        GUICtrlSetData(-1, $rectw)
        $rect[2][1] = GUICtrlCreateLabel("", 170, 265, 40, 25)
        GUICtrlSetData(-1, $rectw)
 
        GUICtrlCreateLabel("���θ߶�H", 5, 295)
        $rect[3][0] = GUICtrlCreateSlider(60, 295, 100)
        GUICtrlSetLimit(-1, $recth, 40)
        GUICtrlSetData(-1, $recth)
        $rect[3][1] = GUICtrlCreateLabel("", 170, 295, 40, 25)
        GUICtrlSetData(-1, $recth)
 
        GUICtrlCreateLabel("��ˢ���X", 255, 205)
        $brush[0][0] = GUICtrlCreateSlider(310, 205, 100)
        GUICtrlSetLimit(-1, $brushx, 0)
        GUICtrlSetData(-1, $brushx)
        $brush[0][1] = GUICtrlCreateLabel("", 420, 205, 40, 25)
        GUICtrlSetData(-1, $brushx)
 
        GUICtrlCreateLabel("��ˢ���Y", 255, 235)
        $brush[1][0] = GUICtrlCreateSlider(310, 235, 100)
        GUICtrlSetLimit(-1, $brushy, 0)
        GUICtrlSetData(-1, $brushy)
        $brush[1][1] = GUICtrlCreateLabel("", 420, 235, 40, 25)
        GUICtrlSetData(-1, $brushy)
 
        GUICtrlCreateLabel("��ˢ���W", 255, 265)
        $brush[2][0] = GUICtrlCreateSlider(310, 265, 100)
        GUICtrlSetLimit(-1, 110, 0)
        GUICtrlSetData(-1, $brushw)
        $brush[2][1] = GUICtrlCreateLabel("", 420, 265, 40, 25)
        GUICtrlSetData(-1, $brushw)
 
        GUICtrlCreateLabel("��ˢ�߶�H", 255, 295)
        $brush[3][0] = GUICtrlCreateSlider(310, 295, 100)
        GUICtrlSetLimit(-1, 110, 0)
        GUICtrlSetData(-1, $brushh)
        $brush[3][1] = GUICtrlCreateLabel("", 420, 295, 40, 25)
        GUICtrlSetData(-1, $brushh)
EndFunc   ;==>init
 
Func onHSCROLL($hWnd, $iMsg, $wParam, $lParam)
        Switch $lParam
                Case GUICtrlGetHandle($rect[0][0])
                        $rectx = GUICtrlRead($rect[0][0])
                        GUICtrlSetData($rect[0][1], $rectx)
                Case GUICtrlGetHandle($rect[1][0])
                        $recty = GUICtrlRead($rect[1][0])
                        GUICtrlSetData($rect[1][1], $recty)
                Case GUICtrlGetHandle($rect[2][0])
                        $rectw = GUICtrlRead($rect[2][0])
                        GUICtrlSetData($rect[2][1], $rectw)
                Case GUICtrlGetHandle($rect[3][0])
                        $recth = GUICtrlRead($rect[3][0])
                        GUICtrlSetData($rect[3][1], $recth)
                Case GUICtrlGetHandle($brush[0][0])
                        $brushx = GUICtrlRead($brush[0][0])
                        GUICtrlSetData($brush[0][1], $brushx)
                Case GUICtrlGetHandle($brush[1][0])
                        $brushy = GUICtrlRead($brush[1][0])
                        GUICtrlSetData($brush[1][1], $brushy)
                Case GUICtrlGetHandle($brush[2][0])
                        $brushw = GUICtrlRead($brush[2][0])
                        GUICtrlSetData($brush[2][1], $brushw)
                Case GUICtrlGetHandle($brush[3][0])
                        $brushh = GUICtrlRead($brush[3][0])
                        GUICtrlSetData($brush[3][1], $brushh)
        EndSwitch
        update()
EndFunc   ;==>onHSCROLL
 
Func update()
        Local $HWND_CX = _WinAPI_GetWindowWidth($hPicWnd)
        Local $HWND_CY = _WinAPI_GetWindowHeight($hPicWnd)
        _GDIPlus_Startup()
        $hGraphics = _GDIPlus_GraphicsCreateFromHWND($hPicWnd)
        $hBitmap = _GDIPlus_BitmapCreateFromGraphics($HWND_CX, $HWND_CY, $hGraphics)
        $hBackbuffer = _GDIPlus_ImageGetGraphicsContext($hBitmap)
        _GDIPlus_GraphicsClear($hBackbuffer, 0xFFECE9D8)
        _GDIPlus_GraphicsSetSmoothingMode($hBackbuffer, 2);�⻬ģʽ��2Ϊ8*8�����
        lineBrushComp($hBackbuffer)
        _GDIPlus_GraphicsDrawImageRect($hGraphics, $hBitmap, 0, 0, $HWND_CX, $HWND_CY)
        _GDIPlus_BitmapDispose($hBitmap)
        _GDIPlus_GraphicsDispose($hBackbuffer)
        _GDIPlus_GraphicsDispose($hGraphics)
        _GDIPlus_Shutdown()
EndFunc   ;==>update
 
Func lineBrushComp($hGraphics)
        Local $hPen = _GDIPlus_PenCreate(0xFFFFFFFF, 2)
        Local $hPath = _GDIPlus_PathCreate()
        ;$rectx, $recty, $rectw, $recth�ֱ��Ǿ���·�������XY���꣬�����
        _GDIPlus_PathAddRectangle($hPath, $rectx, $recty, $rectw, $recth)
        Local $hBrush
        ;������4����䷽ʽ�ĶԱȣ�0�ǲ���ת��1��ˮƽ��ת��2 �Ǵ�ֱ��ת��3��ˮƽ��ֱ����ת,����4�ǲ����裬���Բ���ʾ��
        ;ˮƽ��ת���ǵ�������ˢ�ߵ��ڶ���ʱ��ˮƽ��ת
        ;��ֱ��ת���ǵ�������ˢ���ڶ���ʱ����ֱ��ת
        ;�������Խ��仭ˢ��ֻ�з�ת���߲���ת������0��2�Ƿ�ת��1��3�Ƿ�ת
        ;$brushx, $brushy, $brushw, $brushh�ֱ��������õĻ�ˢ�����XY�����
        ;_GDIPlus_LineBrushCreate�����Ĳ��������XY���յ�XY�������յ��XY�������+���
        Local $endx = $brushw + $brushx, $endy = $brushh + $brushy
        ;============================================================
        ;˵��������ˢ�����������һ��ʱ�����Ч�������׿��ƣ��Լ��ڽ������������һ��
        ;============================================================
        
        For $i = 0 To 3
                $hBrush = _GDIPlus_LineBrushCreate($brushx, $brushy, $endx, $endy, 0xFFFFFFFF, 0xFFFF0000, $i)
                _GraphicsFillPath($hGraphics, $hPath, $hBrush)
                _GraphicsDrawPath($hGraphics, $hPath, $hPen)
                _GDIPlus_BrushDispose($hBrush)
                _GraphicsDrawString($hGraphics, "����" & $i, $rectx, $recty + $recth + 10)
                _GDIPlus_GraphicsTranslateTransform($hGraphics, $rectx + $rectw + 10, 0)
        Next
        _GDIPlus_PathDispose($hPath)
        _GDIPlus_PenDispose($hPen)
        
        ;��λ����
        _GDIPlus_GraphicsResetTransform($hGraphics)
        _GDIPlus_GraphicsTranslateTransform($hGraphics, 0, $recty + $recth + 40)
        ;================================����ԭ��ˢ����
        $hPath = _GDIPlus_PathCreate()
        ;��ֹ��ˢ���Ϊ0ʱ��������ˢ�ӣ���Ϊ0ʱ������Ϊ1��ϸ
        Local $brushrectw = $brushw, $brushrecth = $brushh
        If $brushw = 0 Then $brushrectw += 1
        If $brushh = 0 Then $brushrecth += 1
        _GDIPlus_PathAddRectangle($hPath, $brushx, $brushy, $brushrectw, $brushrecth)
        $hBrush = _GDIPlus_LineBrushCreate($brushx, $brushy, $endx, $endy, 0xFFFFFFFF, 0xFFFF0000)
        _GraphicsFillPath($hGraphics, $hPath, $hBrush)
        _GDIPlus_BrushDispose($hBrush)
        _GDIPlus_PathDispose($hPath)
EndFunc   ;==>String1
 
;_GDIPlus_GraphicsDrawString�������������Ϊ��û������$hBrush,�����Ҹĳ������Ϳ����ò�ͬ�Ļ�ˢ��
Func _GraphicsDrawString($hGraphics, $sString, $nX, $nY, $hBrush = 0, $sFont = "Arial", $nSize = 10, $iFormat = 0)
        Local $hFormat = _GDIPlus_StringFormatCreate($iFormat)
        Local $hFamily = _GDIPlus_FontFamilyCreate($sFont)
        Local $hFont = _GDIPlus_FontCreate($hFamily, $nSize)
        Local $tLayout = _GDIPlus_RectFCreate($nX, $nY, 0, 0)
        Local $aInfo = _GDIPlus_GraphicsMeasureString($hGraphics, $sString, $hFont, $tLayout, $hFormat)
        __GDIPlus_BrushDefCreate($hBrush)
        Local $aResult = _GDIPlus_GraphicsDrawStringEx($hGraphics, $sString, $hFont, $aInfo[0], $hFormat, $hBrush)
        Local $iError = @error
        __GDIPlus_BrushDefDispose()
        _GDIPlus_FontDispose($hFont)
        _GDIPlus_FontFamilyDispose($hFamily)
        _GDIPlus_StringFormatDispose($hFormat)
        Return SetError($iError, 0, $aResult)
EndFunc   ;==>_GraphicsDrawString
 
;������������·�������·������3.3.9.5���Ѿ������ˣ����õ���3.3.7.15���ʺͻ�ˢ���ò��ԣ����Ըĳ������ľ�����
Func _GraphicsDrawPath($hGraphics, $hPath, $hPen = 0)
        Local $iTmpErr, $iTmpExt, $aResult
 
        __GDIPlus_PenDefCreate($hPen)
 
        $aResult = DllCall($ghGDIPDll, "uint", "GdipDrawPath", "hwnd", $hGraphics, "hwnd", $hPen, "hwnd", $hPath)
        $iTmpErr = @error
        $iTmpExt = @extended
 
        __GDIPlus_PenDefDispose()
 
        If $iTmpErr Then Return SetError($iTmpErr, $iTmpExt, False)
        $GDIP_STATUS = $aResult[0]
        Return $aResult[0] = 0
EndFunc   ;==>_GraphicsDrawPath
 
Func _GraphicsFillPath($hGraphics, $hPath, $hBrush = 0)
        Local $iTmpErr, $iTmpExt, $aResult
 
        __GDIPlus_BrushDefCreate($hBrush)
 
        $aResult = DllCall($ghGDIPDll, "uint", "GdipFillPath", "hwnd", $hGraphics, "hwnd", $hBrush, "hwnd", $hPath)
        $iTmpErr = @error
        $iTmpExt = @extended
 
        __GDIPlus_BrushDefDispose()
 
        If $iTmpErr Then Return SetError($iTmpErr, $iTmpExt, False)
        $GDIP_STATUS = $aResult[0]
        Return $aResult[0] = 0
EndFunc   ;==>_GraphicsFillPath
