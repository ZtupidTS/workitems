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
#AutoIt3Wrapper_Icon=NOD32-5.ico
#AutoIt3Wrapper_OutFile=������NOD32����.exe
#AutoIt3Wrapper_UseUPX=n
#AutoIt3Wrapper_Res_Comment=NOD32��������� - ������(20111112)
#AutoIt3Wrapper_Res_Description=NOD32��������� - ������(20111112)
#AutoIt3Wrapper_Res_FileVersion=1.0.1.9
#AutoIt3Wrapper_Res_LegalCopyright=Nod32������ | �����ǳ�Ʒ
#AutoIt3Wrapper_Res_Field=��Ʒ�汾|V1.0.1.0
#AutoIt3Wrapper_Res_Field=��Ʒ����|NOD32��������� - ������(20111112)
#AutoIt3Wrapper_Res_Field=Դ�ļ���|NOD32��������� - ������(20111112)
#AutoIt3Wrapper_Res_Field=�ڲ�����|NOD32��������� - ������(20111112)
#AutoIt3Wrapper_Res_Field=������ҳ|[url]Http://Www.shenmaying.Com[/url]
#AutoIt3Wrapper_Res_Field=��������|������
#AutoIt3Wrapper_Res_Field=��ʱͨ��|QQ/TM:52696126
#AutoIt3Wrapper_Res_Field=�����ʼ�|[email]52696126@QQ.com[/email]
#EndRegion ;**** ���������� ACNWrapper_GUI ****
 
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <ListViewConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ComboConstants.au3>
#include <GuiListView.au3>
#include <Constants.au3>        ;�����¼���Ҫ��ͷ�ļ�
#include <IE.au3>
#include <Misc.au3>
;~ #include<array.au3>
If _Singleton("SXXNOD32BL", 1) = 0 Then Exit
FileInstall("wmSkin.dll", @UserProfileDir & "\wmSkin.dll")
Opt("TrayOnEventMode", 1)
Opt("TrayMenuMode", 11)
Opt("TrayIconHide", 0)
TraySetClick(16)
$Setuphritem = TrayCreateItem("����")
TrayItemSetOnEvent(-1, "_Setup")
$Setuphritem = TrayCreateItem("")
$exititem = TrayCreateItem("����")
TrayItemSetOnEvent(-1, "_Aboutme")
$exititem = TrayCreateItem("�˳�")
TrayItemSetOnEvent(-1, "ExitScript")
 
#Region ### START Koda GUI section ### Form=D:\$__code__au3\Nod32������\NOD32-5.kxf
$Form1 = GUICreate("NOD32��������� - ������(20111112)", 620, 332, @DesktopWidth - 869, @DesktopHeight - 399)
$ListView1 = GUICtrlCreateListView(" �û��� | ���� |ҳ������", 5, 8, 378, 254)
_showListView()
GUICtrlSetResizing($ListView1, $GUI_DOCKALL) ;$
_GUICtrlListView_SetColumnWidth($ListView1, 0, $LVSCW_AUTOSIZE_USEHEADER)
;~ =====list�Ҽ��˵�=====
$ContextMenu = GUICtrlCreateContextMenu($ListView1)
$ContextMenu_import = GUICtrlCreateMenu("�Զ������û�ID������", $ContextMenu, 1)
$ContextMenu_import1 = GUICtrlCreateMenuItem("NOD32 v2.7", $ContextMenu_import)
$ContextMenu_import2 = GUICtrlCreateMenuItem("NOD32 v4.2", $ContextMenu_import)
$ContextMenu_import3 = GUICtrlCreateMenuItem("NOD32 v5", $ContextMenu_import)
$ContextMenu_download = GUICtrlCreateMenu("��ȡ���¹ٷ����ص�ַ", $ContextMenu, 1)
$ContextMenu_download1 = GUICtrlCreateMenuItem(" 32λ ESS���°� ", $ContextMenu_download)
$ContextMenu_download2 = GUICtrlCreateMenuItem(" 32λ EAV���°� ", $ContextMenu_download)
$ContextMenu_download3 = GUICtrlCreateMenuItem(" 64λ ESS���°� ", $ContextMenu_download)
$ContextMenu_download4 = GUICtrlCreateMenuItem(" 64λ EAV���°� ", $ContextMenu_download)
_GUICtrlListView_RegisterSortCallBack($ListView1) ;����
;~ =====list�Ҽ��˵�=====
$Group1 = GUICtrlCreateGroup("", 6, 264, 610, 41)
$Input1 = GUICtrlCreateInput("���ص�ַ", 10, 277, 537, 21)
GUICtrlSetColor($Input1, 0x808080)
$Button1 = GUICtrlCreateButton("����", 555, 277, 51, 21, $BS_FLAT)
GUICtrlSetState($Button1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("��Ϣ", 390, 8, 226, 254)
$Label1 = GUICtrlCreateLabel("������ֻ����ѧϰ����֮�ã���������������Դ�����磬�����ϲ��ESET NOD��Ʒ����֧�����棡", 396, 220, 215, 39)
$Label2 = GUICtrlCreateLabel("", 396, 27, 213, 159)
$Button2 = GUICtrlCreateButton("�����û���", 394, 192, 70, 25, $BS_FLAT)
$Button3 = GUICtrlCreateButton("��������", 468, 192, 70, 25, $BS_FLAT)
$Button4 = GUICtrlCreateButton("�߼�ģʽ", 542, 192, 70, 25, $BS_FLAT)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlSetResizing($Group2, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Label1, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Label2, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Button2, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Button3, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Button4, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
_GUICtrlListView_RegisterSortCallBack($ListView1)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1)
Dim $StatusBar1_PartsWidth[3] = [165, 425, -1]
_GUICtrlStatusBar_SetParts($StatusBar1, $StatusBar1_PartsWidth)
_GUICtrlStatusBar_SetText($StatusBar1, "�����Ѽ��� " & _GUICtrlListView_GetItemCount($ListView1) & " ��������", 0)
_GUICtrlStatusBar_SetText($StatusBar1, "�������а�", 1)
_GUICtrlStatusBar_SetText($StatusBar1, "�������ǡ��Ʒ��QQ52696126", 2)
 
Global $Group3, $Group4, $Combo1, $Label3, $Checkbox1, $Label4, $Button5, $Button6
$Group3 = GUICtrlCreateGroup("����", 620, 8, 233, 254)
$Group4 = GUICtrlCreateGroup("", 628, 32, 217, 169)
$Combo1 = GUICtrlCreateCombo("", 635, 72, 89, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL, 0x0003))
GUICtrlSetData($Combo1, "||NOD32 v2.7|NOD32 v4.2|NOD32 v5", "")
$Label3 = GUICtrlCreateLabel("���иù���ʱ�û����������Զ����뵽", 632, 50, 208, 17)
$Checkbox1 = GUICtrlCreateCheckbox("��Windows����", 636, 104, 97, 17)
$Label4 = GUICtrlCreateLabel("��Windows�������ܸ��ݵ������ã����������û��������룬��ȥ�ֶ�����", 633, 128, 206, 65)
$Label5 = GUICtrlCreateLabel("", 772, 104, 62, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button5 = GUICtrlCreateButton("ȷ��", 655, 208, 70, 25)
$Button6 = GUICtrlCreateButton("����", 747, 208, 70, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlSetResizing($Group3, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Group4, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Combo1, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Label3, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Checkbox1, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Label4, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Label5, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Button5, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
GUICtrlSetResizing($Button6, $GUI_DOCKLEFT + $GUI_DOCKSIZE) ;
 
GUICtrlSetResizing($Group3, $GUI_DOCKALL)
GUICtrlSetResizing($Group4, $GUI_DOCKALL)
GUICtrlSetResizing($Combo1, $GUI_DOCKALL)
GUICtrlSetResizing($Label3, $GUI_DOCKALL)
GUICtrlSetResizing($Checkbox1, $GUI_DOCKALL)
GUICtrlSetResizing($Label4, $GUI_DOCKALL)
GUICtrlSetResizing($Label5, $GUI_DOCKALL)
GUICtrlSetResizing($Button5, $GUI_DOCKALL)
GUICtrlSetResizing($Button6, $GUI_DOCKALL)
 
 
DllCall(@UserProfileDir & "\wmSkin.dll", "none", "wmSkin", "int", Random(0, 24, 1), "int", 0) ;0ָ0��Ƥ��   0--24 1Ϊ����Ӱ
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
 
$AutoRun = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "NOD32ID_banlv")
 
If $AutoRun = @ScriptFullPath Then
        GUICtrlSetState($Checkbox1, $GUI_CHECKED)
Else
        GUICtrlSetState($Checkbox1, $GUI_UNCHECKED)
EndIf
 
$AutoIm = RegRead("HKEY_USERS\.DEFAULT\Control Panel\NOD32IDBL", "AutoIm")
If $AutoIm = "" Or @error Then
        GUICtrlSetData($Combo1, "||NOD32 v2.7|NOD32 v4.2|NOD32 v5", "")
Else
        GUICtrlSetData($Combo1, "||NOD32 v2.7|NOD32 v4.2|NOD32 v5", $AutoIm)
EndIf
 
If $AutoRun = @ScriptFullPath And $AutoIm <> "" Then
        _AutoUpdate($AutoIm, True)
ElseIf $AutoIm <> "" Then
        _AutoUpdate($AutoIm)
Else
        
EndIf
 
GUIRegisterMsg($WM_NOTIFY, "WM_NOTIFY")
 
While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
                Case $Button1
                        $downloadadd = GUICtrlRead($Input1)
                        ClipPut($downloadadd)
                        $Label2Text = GUICtrlRead($Label2)
                        GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "���ص�ַ��װ�������")
                        GUICtrlSetData($Input1, "���ص�ַ")
                        GUICtrlSetColor($Input1, 0x808080)
                        
                Case $Button2
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        ClipPut($name)
                        $Label2Text = GUICtrlRead($Label2)
                        GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��" & $name & "�� ��װ�������")
 
                Case $Button3
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        ClipPut($pw)
                        $Label2Text = GUICtrlRead($Label2)
                        GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��" & $pw & "�� ��װ�������")
                        
                Case $Button4
                        
                        
                        $BtTxt = GUICtrlRead($Button4)
                        _GUIMove($BtTxt)
 
                Case $ContextMenu_download1
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        _Yz($name, $pw, True, "32BitESS")
 
                Case $ContextMenu_download2
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        _Yz($name, $pw, True, "32BitEAV")
 
                Case $ContextMenu_download3
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        _Yz($name, $pw, True, "64BitESS")
                        
                Case $ContextMenu_download4
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        _Yz($name, $pw, True, "64BitEAV")
                        
                Case $ContextMenu_import1
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        If _Yz($name, $pw) Then
                                _import27($name, $pw)
                        Else
                                $Label2Text = GUICtrlRead($Label2)
                                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��֤ʧ�ܣ���ִ�е���")
                        EndIf
                        
                Case $ContextMenu_import2
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        If _Yz($name, $pw) Then
                                _import42($name, $pw)
                        Else
                                $Label2Text = GUICtrlRead($Label2)
                                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��֤ʧ�ܣ���ִ�е���")
                        EndIf
                        
                Case $ContextMenu_import3
                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                        If Not StringLen($Index) Then
                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                GUICtrlSetState($Button1, $GUI_DISABLE)
                                ContinueLoop
                        EndIf
                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "���룺" & $pw)
                        If _Yz($name, $pw) Then
                                _import5($name, $pw)
                        Else
                                $Label2Text = GUICtrlRead($Label2)
                                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��֤ʧ�ܣ���ִ�е���")
                        EndIf
                        
                Case $ListView1
                        _GUICtrlListView_SortItems($ListView1, GUICtrlGetState($ListView1))
                        
                Case $Button5
                        $CtrlCombo = GUICtrlRead($Combo1)
                        $CtrlCheckbox = GUICtrlRead($Checkbox1)
                        If $CtrlCheckbox = $GUI_CHECKED Then
                                RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "NOD32ID_banlv", "REG_SZ", @ScriptFullPath)
                        Else
                                RegDelete("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "NOD32ID_banlv")
                        EndIf
                        
                        If $CtrlCombo <> "" Then
                                RegWrite("HKEY_USERS\.DEFAULT\Control Panel\NOD32IDBL", "AutoIm", "REG_SZ", $CtrlCombo)
                        Else
                                RegDelete("HKEY_USERS\.DEFAULT\Control Panel\NOD32IDBL", "AutoIm")
                        EndIf
                        GUICtrlSetData($Label5, "���óɹ���")
                Case $Button6
                        GUICtrlSetData($Combo1, "||NOD32 v2.7|NOD32 v4.2|NOD32 v5", "")
                        GUICtrlSetState($Checkbox1, $GUI_UNCHECKED)
                        RegDelete("HKEY_USERS\.DEFAULT\Control Panel\NOD32IDBL", "AutoIm")
                        RegDelete("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "NOD32ID_banlv")
                        GUICtrlSetData($Label5, "���óɹ���")
        EndSwitch
WEnd
 
 
Func _showListView()
        
        Local $Date = @YEAR & "-" & @MON & "-" & @MDAY, $i = 0, $sData[2]
        $sData[1] = InetRead("http://www.nod32jihuoma.cn/nod32-id/" & $Date & ".html", 1)
;~      $sData[1] = BinaryToString($sData[1])
;~      $sData[2] = InetRead("http://www.nod32home.com/nod32-id/" & $Date & ".html")
        For $sitenum = 1 To UBound($sData) - 1
                
                $nBytesRead = @extended
                $text = BinaryToString($sData[$sitenum])
;~              MsgBox(0,"asdcccccccccccc",$text)
;~              $Array = StringRegExp($text, '�û�\W*(\w*-\d*).*?��.*?(\w*)<br.*?\n��Ч.*?(\d*-\d*-\d*).*?��\W*(.*?)<', 3)
                $Array = StringRegExp($text, '�û�\W*(\w*-\d*).*?��.*?(\w*)<', 3)
;~              $Array = StringRegExp($text, '.*?(\w*-\d*) - (\w*)', 3)
;~              _ArrayDisplay($Array)
                If Not IsArray($Array) Then $Array = StringRegExp($text, '<div>�û�����(.*?) .*?���룺([^\h]+)</di.*?\n��Ч�ڣ�([^\h]+).*?���ͣ�([^\h]+)</div', 3)
;~      $array2 = StringRegExp($text, '��Ч�ڣ�([^\h]+).*?���ͣ�([^\h]+)<br', 3)
;~      If Not IsArray($array2) Then $array2 = StringRegExp($text, '<div>��Ч�ڣ�([^\h]+).*?���ͣ�([^\h]+)</div', 3)
;~      _ArrayDisplay($Array)
;~      _ArrayDisplay($Array2)
                For $i = 0 To UBound($Array) - 1
                        GUICtrlCreateListViewItem($Array[$i] & "|" & $Array[$i+1] & "|" & $Date, $ListView1)
                        $i = $i+1
                Next
        Next
EndFunc   ;==>_showListView
 
Func WM_NOTIFY($hWndGUI, $MsgID, $WParam, $LParam)
 
        Local $tagNMHDR, $Event, $hWndFrom, $IDFrom, $name, $ip, $prot, $sn, $ConnInfo, $ConnInfoarr, $rd = 0
        Local $tagNMHDR = DllStructCreate("int;int;int", $LParam)
        If @error Then Return $GUI_RUNDEFMSG
        $IDFrom = DllStructGetData($tagNMHDR, 2)
        $Event = DllStructGetData($tagNMHDR, 3)
        $tagNMHDR = 0
        Switch $IDFrom;ѡ������¼��Ŀؼ�
                
                Case $ListView1
 
                        Switch $Event; ѡ��������¼�
 
                                Case $NM_CLICK ; ���
                                        $Index = _GUICtrlListView_GetSelectedIndices($ListView1)
                                        If Not StringLen($Index) Then
                                                GUICtrlSetData($Label2, "û��ѡ����Ϣ")
                                                GUICtrlSetState($Button1, $GUI_DISABLE)
;~                                              MsgBox(8512, "����", "�������ۻ��ˣ�û��ѡ���κ����ݣ�  ")
                                                Return
                                        EndIf
                                        $name = _GUICtrlListView_GetItemText($ListView1, Number($Index))
                                        $pw = _GUICtrlListView_GetItemText($ListView1, Number($Index), 1)
                                        GUICtrlSetData($Label2, "�û�����" & $name & @CRLF & @CRLF & "��  �룺" & $pw)
                                        _Yz($name, $pw)
                                Case $NM_DBLCLK ; ˫��
                                        
                                        
                                Case $NM_RCLICK ; �һ�
 
                        EndSwitch
 
        EndSwitch
        Return $GUI_RUNDEFMSG
        
EndFunc   ;==>WM_NOTIFY
 
Func _Yz($userN, $password, $download = False, $downloadVersion = False)
        $Yz = $userN & ":" & $password
        $Label2Text = GUICtrlRead($Label2)
        GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��������֤�С���")
        Switch $downloadVersion
                Case "32BitESS"
                        $file = "http://" & $Yz & "@download.eset.com/download/win/ess/ess_nt32_chs.msi"
                Case "32BitEAV"
                        $file = "http://" & $Yz & "@download.eset.com/download/win/eav/eav_nt32_chs.msi"
                Case "64BitESS"
                        $file = "http://" & $Yz & "@download.eset.com/download/win/ess/ess_nt64_chs.msi"
                Case "64BitEAV"
                        $file = "http://" & $Yz & "@download.eset.com/download/win/eav/eav_nt64_chs.msi"
                Case Else
                        $file = "http://" & $Yz & "@download.eset.com/download/win/eav/eav_nt32_chs.msi"
        EndSwitch
        $file_size = InetGetSize($file)
        If $file_size > 10000 Then
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��֤������ͨ����")
                If $download Then
                        $Label2Text = GUICtrlRead($Label2)
                        GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "���ص�ַ�Ѿ���ʾ�������������")
                        GUICtrlSetData($Input1, $file)
                        GUICtrlSetColor($Input1, 0x0000EE)
                        GUICtrlSetState($Button1, $GUI_ENABLE)
                EndIf
                Return True
        Else
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "��֤����������")
                If $download Then GUICtrlSetData($Input1, "��֤�������ṩ���ص�ַ")
                Return False
        EndIf
EndFunc   ;==>_Yz
 
Func _import27($userN, $password)
        Local $reg_result = ""
        Local $Array[20] = [0x61, "D6", 0xD4, "E9", 0xDD, "F0", 0xFB, "F2", 0x5B, "64", 0x35, "AD", 0xB7, "C8", 0x19, "75", 0xEC, "31", 0x2B, "BC"]
        For $x = 1 To 10
                $reg_result = $reg_result & Hex(BitXOR(Binary(Asc(StringMid($password, $x, 1))), $Array[2 * $x - 2]), 2) & $Array[2 * $x - 1]
        Next
        RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\NOD\CurrentVersion\Modules\Update\Settings\Config000\Settings", "Username", "REG_SZ", $userN)
        RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\NOD\CurrentVersion\Modules\Update\Settings\Config000\Settings", "Password", "REG_BINARY", "0x" & $reg_result)
        Sleep(300)
        $teguserN = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\NOD\CurrentVersion\Modules\Update\Settings\Config000\Settings", "Username")
        $Label2Text = GUICtrlRead($Label2)
        If $teguserN = $userN Then
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ������")
                Return True
        Else
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ�ʧ�ܡ����������Ȩ��")
                Return False
        EndIf
        
EndFunc   ;==>_import27
 
Func _import42($userN, $password)
        BlockInput(1)
        Local $NOD32v42path = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security\CurrentVersion\Info", "InstallDir")
        Run($NOD32v42path & "\egui.exe", "", @SW_SHOW)
        WinWaitActive("ESET")
        Send("^u")
        WinWaitActive("���֤��ϸ��Ϣ")
        ControlSetText("���֤��ϸ��Ϣ", "�û���", "Edit1", $userN)
        ControlClick("���֤��ϸ��Ϣ", "�û���", "Edit2", "left")
        Send("{END}")
        Send("+{HOME}")
        Send("{DEL}")
        ControlSend("���֤��ϸ��Ϣ", "�û���", "Edit2", $password)
        ControlClick("���֤��ϸ��Ϣ", "�û���", "Button1", "left")
        WinSetState("ESET", "", @SW_HIDE)
        BlockInput(0)
        $Label2Text = GUICtrlRead($Label2)
        $teguserN = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security\CurrentVersion\Plugins\01000400\Profiles\@My profile", "Username")
        If $teguserN = $userN Then
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ������")
                Return True
        Else
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ�ʧ�ܡ����������Ȩ��")
                Return False
        EndIf
        
EndFunc   ;==>_import42
 
Func _import5($userN, $password)
        BlockInput(1)
        Local $NOD32v42path = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security\CurrentVersion\Info", "InstallDir")
        Run($NOD32v42path & "\egui.exe", "", @SW_SHOW)
        WinWaitActive("ESET")
        Send("^u")
        WinWaitActive("ESET")
        ControlSetText("ESET", "���֤��ϸ��Ϣ", "Edit1", $userN)
        ControlClick("ESET", "���֤��ϸ��Ϣ", "Edit2", "left")
        Send("{END}")
        Send("+{HOME}")
        Send("{DEL}")
        ControlSend("ESET", "���֤��ϸ��Ϣ", "Edit2", $password)
        ControlClick("ESET", "���֤��ϸ��Ϣ", "Button1", "left")
        WinSetState("ESET", "", @SW_HIDE)
        BlockInput(0)
        $Label2Text = GUICtrlRead($Label2)
        $teguserN = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security\CurrentVersion\Plugins\01000400\Profiles\@My profile", "Username")
        If $teguserN = $userN Then
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ������")
                Return True
        Else
                GUICtrlSetData($Label2, $Label2Text & @CRLF & @CRLF & "�ɹ�ʧ�ܡ����������Ȩ��")
                Return False
        EndIf
        
EndFunc   ;==>_import5
 
Func _Aboutme()
        MsgBox(0, "NOD32��������� - ������Beta2(20111112)", "�������ǳ�Ʒ�" & @CRLF & @CRLF & "QQ52696126           ", 8)
EndFunc   ;==>_Aboutme
 
Func ExitScript()
        Exit
EndFunc   ;==>ExitScript
 
 
Func _Setup()
        MsgBox(0, "NOD32��������� - ������Beta2(20111112)", "�ݲ����Ŵ˹���" & @CRLF & @CRLF & "�������ǳ�Ʒ�" & @CRLF & @CRLF & "QQ52696126                ", 8)
;~ _subform()
EndFunc   ;==>_Setup
 
Func _GUIMove($BtTxt)
        $guixy = WinGetPos($Form1)
        If $BtTxt = '����ģʽ' Then
                GUICtrlSetData($Button4, '�߼�ģʽ')
                $new_guiX = $guixy[2] - 240
        Else
                GUICtrlSetData($Button4, '����ģʽ')
                $new_guiX = $guixy[2] + 240
        EndIf
        WinMove($Form1, '', $guixy[0], $guixy[1], $new_guiX, $guixy[3])
        Return
EndFunc   ;==>_GUIMove
 
Func _AutoUpdate($version, $RegAutoRun = False)
 
        $ItemCount = _GUICtrlListView_GetItemCount($ListView1)
        For $i = 0 To $ItemCount - 1
                $ItemTextArray = _GUICtrlListView_GetItemTextArray($ListView1, Random($i, $ItemCount - 1, 1))
                $Yz = $ItemTextArray[1] & ":" & $ItemTextArray[2]
                If _Yz($ItemTextArray[1], $ItemTextArray[2]) Then
                        Switch $version
                                Case "NOD32 v2.7"
                                        If _import27($ItemTextArray[1], $ItemTextArray[2]) Then
                                                ExitLoop
                                        Else
                                                ContinueLoop
                                        EndIf
                                Case "NOD32 v4.2"
                                        If _import42($ItemTextArray[1], $ItemTextArray[2]) Then
                                                ExitLoop
                                        Else
                                                ContinueLoop
                                        EndIf
                                Case "NOD32 v5"
                                        If _import5($ItemTextArray[1], $ItemTextArray[2]) Then
                                                ExitLoop
                                        Else
                                                ContinueLoop
                                        EndIf
                        EndSwitch
                Else
                        ContinueLoop
                EndIf
        Next
        If $RegAutoRun Then
                TrayTip("����ɹ�", "�û�����" & $ItemTextArray[1] & @CRLF & "���룺" & $ItemTextArray[2] & @CRLF, 5)
                Sleep(3000)
        Else
                TrayTip("����ɹ�", "�û�����" & $ItemTextArray[1] & @CRLF & "���룺" & $ItemTextArray[2] & @CRLF, 5)
                Sleep(3000)
                Return
        EndIf
 
EndFunc   ;==>_AutoUpdate