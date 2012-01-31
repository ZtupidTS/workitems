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
#include <StaticConstants.au3>
#Include <File.au3>
GUICreate("3D����", 650, 550)
GUISetBkColor(0x996600)
$arStyle=StringSplit("u|i|n|u|i|n","|",2)
For $i=0 To 5
    _3DText("3D����", 10, 20+80*$i, 380, -1, 14 + $i*10, "b", $arStyle[$i])
Next
GUISetState(@SW_SHOW)
While 1
    Sleep(10)
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
    EndSwitch
WEnd
Func _3DText($sText,$iX, $iY, $iW=-1, $iH=-1, $iFontSize = 14, $sWeight="b", $sStyle = "n", $sFont="Arial")
    If $iW = -1 Or $iW = Default Then $iW = Int(StringLen($sText)*$iFontSize/1.2)
    If $iH = -1 Or $iH = Default Then $iH = Int(1.5*$iFontSize)
    If $iFontSize = -1 Or $iFontSize = Default Then $iFontSize = 14
    If $sWeight = -1 Or $sWeight = Default Then $sWeight = "b"
    If $sStyle = -1 Or $sStyle = Default Then $sStyle = "n"
    If $sFont = -1 Or $sFont = Default Then $sFont = "Arial"
    Local $f = 0x111111
    Switch $sWeight
        Case "b"
            $iWeight = 800
        Case "n"
            $iWeight = 400
    EndSwitch
    Switch $sStyle
        Case "n"
            $iStyle = 0
        Case "i"
            $iStyle = 2
        Case "u"
            $iStyle = 4
    EndSwitch
    Local $iZ = $iFontSize/10
    For $i=0 To $iZ Step 0.5
        GUICtrlCreateLabel($sText, $iX-$i, $iY+$i, $iW, $iH)
        GUICtrlSetColor(-1,$f*($i+1)/0.5)
        GUICtrlSetFont(-1, $iFontSize, $iWeight, $iStyle, $sFont)
        GUICtrlSetBkColor(-1,$GUI_BKCOLOR_TRANSPARENT)
    Next
EndFunc