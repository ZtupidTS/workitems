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

#include <GuiConstantsEx.au3>
#include <GDIPlus.au3>
#Include <GDIPlusEx.au3>
#Include <WinAPIEx.au3>
#Include <WindowsConstants.au3>
;#include <array.au3>
 
Opt('MustDeclareVars', 1)
 
Global   $left=@DesktopWidth
Local $hGUI, $hWnd, $hGraphic, $hBrush, $hFormat, $hFamily, $hFont, $tLayout, $aInfo  
Local $sString = "Hello world"&@CRLF&"������Ļ����,Ϊ�����ӳ�������һ��,��֪����Ӣ�Ļ�ϵ�Ч�����? this is a ����!"&@CRLF&"abcdefghijklmnop"
 
$aInfo=_GetStringsize($sString,"΢���ź�",12,2,400);ֻ��ע���������õ�����������LABEL������һ��
 
Local $W=DllStructGetData($aInfo[0],3)
Local $H=DllStructGetData($aInfo[0],4)
 
$hGUI = GUICreate("GDI+", $W,$H,0-$W,0,0x80000000+0x00000200,0x02000000+0x00080000+0x00000020)
GUISetBkColor(0x010101)
        
GUICtrlCreateLabel($sString,0,0,$W,$H)
GUICtrlSetFont(-1,12,400,2,"΢���ź�");�ؼ�ID, ��С , Ȩֵ , ���� , ������
GUICtrlSetColor(-1,0xfcaf17)
GUICtrlSetBkColor(-1,-2)
_WinAPI_SetLayeredWindowAttributes($hGUI,0xff010101,255,0x03,True)
GUISetState()
  
AdlibRegister("time",50)
 
while GUIGetMsg()+3
WEnd
 
Func time()
        if $left<0-$W then 
                AdlibUnRegister("time")
                Exit
        EndIf
        WinMove($hGUI,"",$left,0)
        $left-=1
EndFunc
 
#cs
Name           :_GetStringsize
Description   :�����ַ������ؿ�,��
Syntax        :_GetStringsize($sString,$Font_Family,$Font_Size,$Font_iStyle)
Parameters  : $sString - ������ַ���
                  $Font_Family - ������
                                  $Font_Size - �����С
                                  $Font_iStyle - ������ʽ. ���Խ�������ֵ:
                                                                        0 - �����ضȻ���Ũ��
                                                                        2 - б��
                                                                        4 - �»���
                                                                        8 - ɾ����
                                 $Font_weight - ����Ȩֵ
                                                                        400 - (����)
                                                                        800 - (����)
Return values: �ɹ�:�����¸�ʽ����: 
                                                        [0] - �����ַ������α߽�� $tagGDIPRECTF �ṹ 
                                                        [1] - ���β�����ʵ���ʺϵ��ַ����� 
                                                        [2] - ���β�����ʵ���ʺϵ����� 
                                        ʧ��   - ���� 0
#ce
Func _GetStringsize($sString,$Font_Family,$Font_Size,$Font_iStyle,$Font_weight)
        if BitAND($Font_iStyle,1)=1 then $Font_iStyle=$Font_iStyle-1
        if $Font_weight=400 Then 
                $Font_weight=0
        Else
                $Font_weight=1
        EndIf   
_GDIPlus_Startup ()
$hGraphic = _GDIPlus_GraphicsCreateFromHWND (WinGetHandle(@ScriptFullPath))
$hBrush = _GDIPlus_BrushCreateSolid (0xFF00007F)
$hFormat = _GDIPlus_StringFormatCreate ()
$hFamily = _GDIPlus_FontFamilyCreate ($Font_Family)
$hFont = _GDIPlus_FontCreate ($hFamily, $Font_Size, BitOR($Font_iStyle,$Font_weight))
$tLayout = _GDIPlus_RectFCreate (0)
$aInfo = _GDIPlus_GraphicsMeasureString ($hGraphic, $sString, $hFont, $tLayout, $hFormat)
if $aInfo=0 then Return SetError(0)
_GDIPlus_FontDispose ($hFont)
_GDIPlus_FontFamilyDispose ($hFamily)
_GDIPlus_StringFormatDispose ($hFormat)
_GDIPlus_BrushDispose ($hBrush)
_GDIPlus_GraphicsDispose ($hGraphic)
_GDIPlus_Shutdown ()
return $aInfo
EndFunc