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

#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
        Au3 �汾: 3.3.9.4
        �ű�����: CrossDoor
        �����ʼ�: [email]382869232@qq.com[/email]
        QQ/TM: 382869232
        �ű��汾: 0.0.0.0
        �ű�����: ������
#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
 
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#Include <Date.au3>
#include <GuiEdit.au3>
 
;~ Global $aMonthName[12] = ["01��","02��","03��","04��","05��","06��","07��","08��","09��","10��","11��","12��"]
Global $aWeekName[7] = ["����","��һ","�ܶ�","����","����","����","����"]
Global $aDayName[42]
Global $hFocusText
$hForm = GUICreate("�����ؼ�",600,400,-1,-1,$WS_POPUP)
 
GUISetBkColor(0x009944)
GUICtrlCreateLabel("��",30,12,50,50)
GUICtrlSetFont(-1, 42, 800)
GUICtrlSetColor(-1,0xFEFEFE)
GUICtrlSetBkColor(-1,-2)
GUICtrlCreateLabel("��",39,19,50,50)
GUICtrlSetFont(-1, 32, 800)
GUICtrlSetColor(-1,0xFEFEFE)
GUICtrlSetBkColor(-1,-2)
 
GUICtrlCreateLabel("����",90,17,250,45)
GUICtrlSetFont(-1, 35, 800)
GUICtrlSetColor(-1,0xFEFEFE)
GUICtrlSetBkColor(-1,-2)
 
Global $hCalendarText = GUICtrlCreateLabel(GetDate(),70,75,380,25)
GUICtrlSetFont(-1, 19, 800)
GUICtrlSetColor(-1,0xFEFEFE)
GUICtrlSetBkColor(-1,-2)
 
Global $hPrevText = GUICtrlCreateLabel("<",95,120,15,20)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,-2)
GUICtrlSetCursor(-1, 0)
Global $hYearText = GUICtrlCreateInput(@YEAR,230,117,58,25)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,0x009944)
GUICtrlSetLimit(-1,4)
GUICtrlCreateLabel("��",288,120,20,25)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,-2)
Global $hMonthText = GUICtrlCreateInput(@MON,308,117,32,25)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,0x009944)
GUICtrlSetLimit(-1,2)
GUICtrlCreateLabel("��",340,120,20,25)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,-2)
Global $hNextText = GUICtrlCreateLabel(">",485,120,15,20)
GUICtrlSetFont(-1, 16, 800)
GUICtrlSetColor(-1,0xDFDFDF)
GUICtrlSetBkColor(-1,-2)
GUICtrlSetCursor(-1, 0)
 
For $i = 0 To 6
        GUICtrlCreateLabel($aWeekName[$i],90+$i*60,155,50,22,$SS_CENTER)
        GUICtrlSetFont(-1, 16, 800)
        GUICtrlSetColor(-1,0xFEFEFE)
        GUICtrlSetBkColor(-1,-2)
Next
 
Local $k=1
For $i = 1 To 6
        For $j =0 To 6
                $aDayName[$k-1] = GUICtrlCreateLabel("",90+$j*60,155+$i*30,50,22,$SS_CENTER)
                GUICtrlSetFont(-1, 16, 800)
                GUICtrlSetColor(-1,0xFEFEFE)
                GUICtrlSetBkColor(-1,-2)
                $k+=1
        Next
Next
SetCalendar(@YEAR, @MON)
GUICtrlSetState($aDayName[34],$GUI_FOCUS)
GUISetState()
GUIRegisterMsg($WM_NCHITTEST, "WM_NCHITTEST")
GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")
AdlibRegister("GetDate", 60000)
 
Do
Until GUIGetMsg() = -3
 
AdlibUnRegister("SetDate")
 
Func WM_COMMAND($hWnd, $iMsg, $iwParam, $ilParam)
    Local $iIDFrom, $iCode, $iYear, $iMonth
    $iIDFrom = BitAND($iwParam, 0x0000FFFF)
    $iCode = BitShift($iwParam, 16)
        Switch $iIDFrom
                Case $hYearText,$hMonthText
                        Switch $iCode
                                Case $EN_UPDATE
                                        $iYear = Int(GUICtrlRead($hYearText))
                                        $iMonth = Int(GUICtrlRead($hMonthText))
                                        If SetCalendar($iYear, $iMonth) Then
                                                If $iMonth < 10 Then GUICtrlSetData($hMonthText,"0"&$iMonth)
                                        EndIf
                                Case $EN_SETFOCUS
                                        $hFocusText = $iIDFrom
                                Case $EN_KILLFOCUS
                                        $hFocusText = ""
                        EndSwitch
                Case $hPrevText
                        $iYear = Int(GUICtrlRead($hYearText))
                        $iMonth = Int(GUICtrlRead($hMonthText))
                        If $hFocusText = $hYearText Then
                                $iYear-=1
                                GUICtrlSetData($hYearText,$iYear)
                                SetCalendar($iYear, $iMonth)
                        Else
                                $iMonth-=1
                                If $iMonth < 1 Then
                                        $iMonth = 12
                                        $iYear-=1
                                        GUICtrlSetData($hYearText,$iYear)
                                EndIf
                                GUICtrlSetData($hMonthText,$iMonth)
                                If SetCalendar($iYear, $iMonth) Then
                                        If $iMonth < 10 Then GUICtrlSetData($hMonthText,"0"&$iMonth)
                                EndIf
                        EndIf
                Case $hNextText 
                        $iYear = Int(GUICtrlRead($hYearText))
                        $iMonth = Int(GUICtrlRead($hMonthText))
                        If $hFocusText = $hYearText Then
                                $iYear+=1
                                GUICtrlSetData($hYearText,$iYear)
                                SetCalendar($iYear, $iMonth)
                        Else
                                $iMonth+=1
                                If $iMonth > 12 Then                                    
                                        $iMonth = 1
                                        $iYear+=1
                                        GUICtrlSetData($hYearText,$iYear)
                                EndIf
                                GUICtrlSetData($hMonthText,$iMonth)
                                If SetCalendar($iYear, $iMonth) Then
                                        If $iMonth < 10 Then GUICtrlSetData($hMonthText,"0"&$iMonth)
                                EndIf
                        EndIf                   
                Case $hCalendarText
                        SetCalendar(@YEAR, @MON)
                        GUICtrlSetData($hYearText,@YEAR)
                        GUICtrlSetData($hMonthText,@MON)
    EndSwitch
    Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_COMMAND
 
 
Func SetCalendar($iYear, $iMonth)
        If $iYear < 999 Or $iYear > 9998 Or $iMonth < 1 And $iMonth > 12 Then Return False                                              
        Local $k=1, $l = 0, $iWeekday = _DateToDayOfWeek($iYear, $iMonth, 1)
        Local $iDays = _DateDaysInMonth($iYear, $iMonth)
        For $i = 1 To 6
                For $j =0 To 6
                        If $k >= $iWeekday And $l < $iDays Then
                                $l+=1
                                GUICtrlSetData($aDayName[$k-1],$l)
                        Else
                                GUICtrlSetData($aDayName[$k-1],"")
                        EndIf
                        If @YEAR = $iYear And @MDAY = $l And @MON = $iMonth Then
                                GUICtrlSetColor($aDayName[$k-1], 0xFFA0A0)
                        Else
                                GUICtrlSetColor($aDayName[$k-1], 0xFEFEFE)
                        EndIf
                        $k+=1
                Next
        Next
        Return True
EndFunc
 
Func SetDate()
        GUICtrlSetData($hCalendarText, GetDate())
EndFunc
 
Func GetDate()
        If @HOUR > 12 Then
                Return (@YEAR & "�� " & @MON & "�� " & @MDAY & "�� ���� " & @HOUR & ":" & @MIN)
        Else
                Return (@YEAR & "�� " & @MON & "�� " & @MDAY & "�� ���� " & @HOUR & ":" & @MIN)
        EndIf
EndFunc
 
Func WM_NCHITTEST($HWND, $IMSG, $IWPARAM, $ILPARAM)
        If ($HWND = $hForm) And ($IMSG = $WM_NCHITTEST) Then Return $HTCAPTION
EndFunc
