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

#include <GuiStatusBar.au3>
 
Global Const $WM_SIZE = 0x05
Global Const $WM_GETMINMAXINFO = 0x0024
Global Const $GUI_RUNDEFMSG = 'GUI_RUNDEFMSG'
 
$width = 588
$hight = 500
 
$pichight = 459
$labelhight = 460
$labelhight2 = 80
 
$GUI = GUICreate('Low Cost Gramload Tester Program (Ver2.2A)', $width, $hight, -1, -1, 0x00070000)
 
$menu1 = GUICtrlCreateMenu("&File")
$menu2 = GUICtrlCreateMenu("Set-&Up")
$menu3 = GUICtrlCreateMenu("&Production")
$menu4 = GUICtrlCreateMenu("&Window")
$menu5 = GUICtrlCreateMenu("&Help")
 
GUICtrlCreatePic("", 0, -1, $width, $hight - $pichight, 0x08000000, 0x0007)
GUICtrlSetResizing(-1, 512 + 32)
 
$ico1 = GUICtrlCreateIcon("shell32.dll", -1, 5, 2, 32, 32, -1, 0x0007)
GUICtrlSetResizing(-1, 770 + 32)
$ico2 = GUICtrlCreateIcon("shell32.dll", -2, 38, 2, 32, 32, -1, 0x0007)
GUICtrlSetResizing(-1, 770 + 32)
$ico3 = GUICtrlCreateIcon("shell32.dll", -3, 70, 2, 32, 32, -1, 0x0007)
GUICtrlSetResizing(-1, 770 + 32)
$ico4 = GUICtrlCreateIcon("shell32.dll", -4, 102, 2, 32, 32, -1, 0x0007)
GUICtrlSetResizing(-1, 770 + 32)
 
$Graphic = GUICtrlCreateGraphic(0, $hight - $labelhight, $width, $hight - $labelhight2, -1)
GUICtrlSetBkColor(-1, 0x848285)
GUICtrlSetResizing(-1, 32)
 
$hStatus = _GUICtrlStatusBar_Create($GUI, -1, '', $SBARS_SIZEGRIP, 0x0007)
;===============================================================================
_GUICtrlStatusBar_SetParts($hStatus, -1)
 
GUISetState()
 
;ע��Windows��Ϣ����
GUIRegisterMsg($WM_SIZE, "WM_SIZE")
GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
 
While 1
        $msg = GUIGetMsg()
        Select
                Case $msg = -3
                        Exit
                Case $msg = $ico1
                        ButtonAnime($GUI, $ico1)
                Case $msg = $ico2
                        ButtonAnime($GUI, $ico2)
                Case $msg = $ico3
                        ButtonAnime($GUI, $ico3)
                Case $msg = $ico4
                        ButtonAnime($GUI, $ico4)
        EndSelect
WEnd
 
Func ButtonAnime($_Hwd, $_Botton)
        Local $_pos = ControlGetPos($_Hwd, "", $_Botton)
        GUICtrlSetPos($_Botton, $_pos[0] + 1, $_pos[1] + 1)
        Sleep(100)
        GUICtrlSetPos($_Botton, $_pos[0], $_pos[1])
EndFunc   ;==>ButtonAnime
 
 
;���ݴ��ڴ�С������״̬��
Func WM_SIZE($hWnd, $iMsg, $iwParam, $ilParam)
        #forceref $hWnd, $iMsg, $iwParam, $ilParam
        _GUICtrlStatusBar_Resize($hStatus)
        GUICtrlSetPos($Graphic, 0, $hight - $labelhight, @DesktopWidth * 3, @DesktopHeight * 3)
        Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SIZE
 
Func WM_GETMINMAXINFO($hWnd, $msg, $wparam, $lparam)
        Local $tagMINMAXINFO = "int;int;int;int;int;int;int;int;int;int"
        $MINMAXINFO = DllStructCreate($tagMINMAXINFO, $lparam)
        DllStructSetData($MINMAXINFO, 7, 300) ;minx
        DllStructSetData($MINMAXINFO, 8, 200) ;miny
        DllStructSetData($MINMAXINFO, 9, @DesktopWidth) ;maxx
        DllStructSetData($MINMAXINFO, 10, @DesktopHeight - 30) ;maxy
EndFunc   ;==>WM_GETMINMAXINFO