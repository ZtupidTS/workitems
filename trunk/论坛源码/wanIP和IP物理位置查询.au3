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

#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GUIComboBox.au3>
#include <iNet.au3>
#include <GuiEdit.au3>
#Region ### START Koda GUI section ### Form=
 
Opt("MustDeclareVars",1)
Opt("GUICloseOnESC",0)
Opt("TrayIconHide",1)
Local $hMain = GUICreate("wanIP������λ��", 340, 230, Default, Default)
Local $hCombo = GUICtrlCreateCombo("", 80, 48, 85, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
Local $aSites[3] = ["chinaz.com","ip138.com","ip.qq.com"]
Local $i
For $i = 0 To UBound($aSites) - 1
        GUICtrlSetData($hCombo,$aSites[$i] & "|")
Next
_GUICtrlComboBox_SetCurSel($hCombo,0)
Local $hInput = GUICtrlCreateInput("",80,16,150,20)
GUICtrlSetTip($hInput,"�������ѯ������Ϣ,֧�ֻس�")
Local $hBtn = GUICtrlCreateButton("��ѯ",238,16,40,20)
Local $hBtn_File = GUICtrlCreateButton("�ļ�",285,16,40,20)
GUICtrlSetTip($hBtn,"��ѯ������")
Local $hEdit = GUICtrlCreateEdit("", 80, 78, 245, 140, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_READONLY,$ES_WANTRETURN,$WS_VSCROLL))
GUICtrlCreateLabel("����IP��ַ����������",12,15,60,34,$SS_RIGHT)
GUICtrlCreateLabel("��ѯ��վ��", 12, 52, 60, 17,$SS_RIGHT)
GUICtrlCreateLabel("��ѯ�����", 12, 80, 60, 17,$SS_RIGHT)
Local $hBtn_Clean = GUICtrlCreateButton("���",12,100,50,20)
_GUICtrlEdit_SetText($hEdit,_chinaz() & " <=[" & $aSites[0] & "]" & @CRLF)
GUICtrlSetState($hInput,$GUI_FOCUS)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
 
While 1
        Local $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
                Case $hCombo
                        If GUICtrlRead($hInput) = "" Then
                                Switch  GUICtrlRead($hCombo)
                                        Case $aSites[0]
                                                _GUICtrlEdit_AppendText($hEdit,_chinaz() & " <=[" & $aSites[0] & "]" & @CRLF)
                                        Case $aSites[1]
                                                _GUICtrlEdit_AppendText($hEdit,_ip138() & " <=[" & $aSites[1] & "]" & @CRLF)
                                        Case $aSites[2]
                                                _GUICtrlEdit_AppendText($hEdit,_qq() & " <=[" & $aSites[2] & "]" & @CRLF)
                                EndSwitch
                        EndIf
                Case $hBtn,$hInput      ;��Ӧ�س��¼�
                        If GUICtrlRead($hInput) = "" Then ContinueCase
                        Local $sInput = GUICtrlRead($hInput)
                        If StringRegExp($sInput,'^(\d{1,3}\.){3}\d{1,3}$') Or StringRegExp($sInput,'^\w[\w-]*\.[\w\.-]*[a-zA-Z]$') Then ;�ж�һ�����������Ƿ�Ϸ�
                                Switch  GUICtrlRead($hCombo)
                                        Case $aSites[0] ;chinaz.com
                                                _GUICtrlEdit_AppendText($hEdit,$sInput & " <=[" & $aSites[0] & "]" & @CRLF & _chinaz_query($sInput) & @CRLF)
                                        Case $aSites[1] ;ip138.com
                                                _GUICtrlEdit_AppendText($hEdit,$sInput & " <=[" & $aSites[1] & "]" & @CRLF & _ip138_query($sInput) & @CRLF)
                                        Case $aSites[2] ;ip.qq.comֻ֧�ֲ�ѯIP,��֧������
                                                _GUICtrlEdit_AppendText($hEdit,$sInput & " <=[" & $aSites[2] & "]" & @CRLF & _qq_query($sInput) & @CRLF)
                                EndSwitch
                        Else
                                MsgBox(16,"�������","����һ���Ϸ�IP������",0,$hMain)
                        EndIf
                Case $hBtn_Clean
                        _GUICtrlEdit_SetText($hEdit,"") ;���
                Case $hBtn_File
                        Local $sFilePath = FileOpenDialog("ѡ���ļ�",@ScriptDir,"�ı��ļ�(*.txt;*.log;*.csv;*.ini)",1,"",$hMain)
                        If Not @error Then 
                                Local $sFileData = FileRead($sFilePath)
                                Local $j
                                Local $hLbl_Lines = GUICtrlCreateLabel("",220,52,100,20)
                                Local $aLines = StringRegExp($sFileData,'\V+',3)
                                If Not @error Then                              
                                        Switch  GUICtrlRead($hCombo)
                                                Case $aSites[0] ;chinaz.com
                                                        For $j = 0 To UBound($aLines) - 1
                                                                GUICtrlSetData($hLbl_Lines,$j+1 & "/" & UBound($aLines) & "(" & Int(($j+1)/UBound($aLines)*100) & " %)")
                                                                _GUICtrlEdit_AppendText($hEdit,$aLines[$j] & " <=[" & $aSites[0] & "]" & @CRLF & _chinaz_query($aLines[$j]) & @CRLF)
                                                        Next
                                                Case $aSites[1] ;ip138.com
                                                        For $j = 0 To UBound($aLines) - 1
                                                                GUICtrlSetData($hLbl_Lines,$j+1 & "/" & UBound($aLines) & "(" & Int(($j+1)/UBound($aLines))*100 & " %)")
                                                                _GUICtrlEdit_AppendText($hEdit,$aLines[$j] & " <=[" & $aSites[1] & "]" & @CRLF & _ip138_query($aLines[$j]) & @CRLF)
                                                        Next
                                        EndSwitch
                                        GUICtrlSetData($hLbl_Lines,"")
                                EndIf
                        EndIf
        EndSwitch
WEnd
 
 
Func _chinaz()
        Local $source = _INetGetSource("http://tool.chinaz.com/IP/",False)
        $source = BinaryToString($source,4)
        Local $sIP,$aIP,$sLocation,$aLocation
        $aIP = StringRegExp($source,'����IP.*?(\d[\d.]+)',3)
        If Not @error Then 
                $sIP = $aIP[0]
        Else
                $sIP = "δ��ȡIP"
        EndIf
        $aLocation = StringRegExp($source,'����:<.*?>([^<>]+)',3)
        If Not @error Then 
                $sLocation = $aLocation[0]
        Else
                $sLocation = "δ��ȡ����λ��"
        EndIf
        Return $sIP & @CRLF & $sLocation
EndFunc
 
Func _ip138()
        Local $source = _INetGetSource('http://iframe.ip138.com/city.asp')
        Local $aInfo = StringRegExp($source,'(?<=\[).*?(?=\])|(?<=���ԣ�)[^<]+(?=<)',3)
        If Not @error Then
                Return $aInfo[0] & @CRLF & $aInfo[1]
        Else
                Return "δ��ȡIP������λ��"
        EndIf
EndFunc
 
Func _qq()
        Local $source = _INetGetSource("http://ip.qq.com")
        Local $sIP,$sLocation,$aIP,$aLocation
        $aIP = StringRegExp($source,'����ǰ��IPΪ.*?(\d[\d.]+)',3)
        If Not @error Then 
                $sIP = $aIP[0]
        Else
                $sIP = "δ��ȡIP"
        EndIf
        $aLocation = StringRegExp($source,'��IP���ڵ�Ϊ.*?([^<>]+)</span>',3)
        If Not @error Then 
                $sLocation = $aLocation[0]
                $sLocation = StringRegExpReplace($sLocation,'&nbsp;','')
        Else
                $sLocation = "δ��ȡ����λ��"
        EndIf
        Return $sIP & @CRLF & $sLocation
EndFunc
 
Func _ip138_query($sHostName = "")
        Local $source = _INetGetSource('http://www.ip138.com/ips1388.asp?ip=' & $sHostName & '&action=2')
        Local $aIP,$sIP,$aLocation,$sLocation
        $aIP = StringRegExp($source,'(?:(?:\b[1-9]\b|\b[1-9]\d\b|1\d\d|2[0-4]\d)\.){3}(?:\b[1-9]\b|\b[1-9]\d\b|1\d\d|2[0-4]\d)',3)
        If Not @error Then 
                $sIP = $aIP[0]
        Else
                $sIP = "δ��ȡ��IP"
        EndIf
        $aLocation = StringRegExp($source,'(?:��վ�����ݣ�|�ο�����һ��)([^<]+)',3)
        If Not @error Then
                $sLocation = $aLocation[0] & @CRLF & $aLocation[1]
        Else
                $sLocation = "δ��ȡ����λ��"
        EndIf
        Return $sIP & @CRLF & $sLocation
EndFunc
 
Func _chinaz_query($sHostName = "")
        Local $source = _INetGetSource('http://tool.chinaz.com/IP/?IP=' & $sHostName,False)
        $source = BinaryToString($source,4)
        Local $info
        Local $aData = StringRegExp($source,'>��ѯ���(.*?)</',3)
        If @error Then 
                Return $info = "δ��ȡIP������λ����Ϣ"
        EndIf
        Local $i,$info = ""
        For $i = 0 To UBound($aData) - 1
                $info = $info & StringRegExpReplace($aData[$i],'\s|(?:==>>)|\d{4,}|:|\[\d\]','') & @CRLF 
        Next
        Return $info
EndFunc
 
Func _qq_query($sHostName = "")
        Local $source = _INetGetSource('http://ip.qq.com/cgi-bin/searchip?searchip1=' & $sHostName)
        Local $sIP,$sLocation,$aIP,$aLocation
        $aIP = StringRegExp($source,'����ǰ��IPΪ.*?(\d[\d.]+)',3)
        If Not @error Then 
                $sIP = $aIP[0]
        Else
                $sIP = "δ��ȡIP"
        EndIf
        $aLocation = StringRegExp($source,'��IP���ڵ�Ϊ.*?([^<>]+)</span>',3)
        If Not @error Then 
                $sLocation = $aLocation[0]
                $sLocation = StringRegExpReplace($sLocation,'&nbsp;','')
        Else
                $sLocation = "δ��ȡ����λ��"
        EndIf
        Return $sIP & @CRLF & $sLocation
EndFunc