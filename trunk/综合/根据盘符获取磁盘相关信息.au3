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
#AutoIt3Wrapper_icon=..\..\..\Windows\system32\SHELL32.dll|-9
#AutoIt3Wrapper_Outfile=�̷���ȡ.exe
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#Include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <ListViewConstants.au3>
#include <ListViewEditEvent.au3> 
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
;----------------------------------------------------------------
Global $us = 0
Global $usb = ""
Global $pf[8] = [0, 0, 0, 0, 0, 0, 0, 0]
;------------------------------------------------
$Form1 = GUICreate("�̷���ȡ", 800, 650,-1, -1, -1, -1, WinGetHandle(AutoItWinGetTitle()));������������ʾ�Ĵ���
;------------------------------------------------------------------
$B1=GUICtrlCreateButton("ˢ ��", 690, 48, 60, 30) ;ˢ��
GUICtrlSetFont(-1, 12, 800, 0, "΢���ź�")
;---------------------------------------------------------------------------------
$Checkbox1 = GUICtrlCreateCheckbox("��ʾȫ��",565, 55, 82, 16) ;"��ʾȫ��"��ѡ��
GUICtrlSetFont(-1, 12, 800, 0, "΢���ź�")
GUICtrlSetState($Checkbox1,$GUI_UNCHECKED) 
;-----------------------------------------------------------------------------------------------------------
$Combo1 = GUICtrlCreateCombo("", 50, 48, 500, 35,BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST)) ;�̷�ѡ��
GUICtrlSetFont(-1, 12, 800, 0, "΢���ź�")
_GUICtrlComboBox_SetDroppedWidth($Combo1,500);��������б߿�������
;-----------------------------------------------------------------------------------------------------------
$Disk = GUICtrlCreateListView("����|���|����|�ļ�ϵͳ|���ÿռ�|�ܴ�С", 50, 190, 700, 400) ;�б�
GUICtrlSetFont(-1, 12, 800, 0, "΢���ź�")
_GUICtrlListView_SetExtendedListViewStyle($Disk, BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_SUBITEMIMAGES));�������
_GUICtrlListView_SetColumn($Disk, 0, "����", 70, 2);����������
_GUICtrlListView_SetColumn($Disk, 1, "���", 150, 2);
_GUICtrlListView_SetColumn($Disk, 2, "����", 100, 2)
_GUICtrlListView_SetColumn($Disk, 3, "�ļ�ϵͳ", 100, 2)
_GUICtrlListView_SetColumn($Disk, 4, "���ÿռ�", 130, 2)
_GUICtrlListView_SetColumn($Disk, 5, "�ܴ�С", 126, 2)
GUICtrlSetColor($Disk, 0x0055ff);����ָ���ؼ����ı���ɫ
GUICtrlSetResizing($Disk, $GUI_DOCKLEFT + $GUI_DOCKRIGHT + $GUI_DOCKMENUBAR)
;---------------------------------------------------------------------------
GUIRegisterMsg($WM_NOTIFY, "WM_NOTIFY")
GUIRegisterMsg(0x0111,"WM_COMMAND")
GUISetState(@SW_SHOW)
;----------------------------------------
Alldisk()
GUISetState(@SW_SHOW)
;----------------------------------------
While 1 
   $nMsg = GUIGetMsg()
   Switch $nMsg        
Case $GUI_EVENT_CLOSE
                Exit
Case $B1 ;ˢ��
        GUICtrlSetState($B1, $GUI_DISABLE)
                Alldisk()
        GUICtrlSetState($B1, $GUI_ENABLE)
Case $Checkbox1 ;��ʾȫ��
                Alldisk() 
   EndSwitch
WEnd 
;--------------------------------------------------------------
Func WM_NOTIFY($hWnd, $iMsg, $iwParam, $ilParam)
        Local $hWndFrom, $iIDFrom, $iCode, $tNMHDR, $hWndListView, $tInfo ,$Menu
    $tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
        $hWndFrom = DllStructGetData($tNMHDR, 2)
    $iCode = DllStructGetData($tNMHDR, 3)
        
    Switch $hWndFrom
Case $Disk
        Switch $iCode
Case $NM_CLICK,$NM_RCLICK,$NM_DBLCLK,$LVCF_UPARROW =1 ,$LVCF_DOWNARROW =2 ;��Ӧ���������һ���˫�����������¼�
        $Index = _GUICtrlListView_GetSelectedIndices($Disk) 
If $Index <> "" Then
        $L_Name = _GUICtrlListView_GetItemText($Disk,Number($Index))
        $DriveLabel = DriveGetLabel($L_Name);���
        $DriveFile = DriveGetFileSystem($L_Name) ;�ļ�ϵͳ
        $DriveTotal = DriveSpaceTotal($L_Name) ;�ܴ�С
        $DriveTotalGB = ByteConversion($DriveTotal)
        $DriveType = DriveGetType($L_Name)                
If $DriveType = "Unknown" Then;�ж��������Ƿ� Unknown ����
    $DriveTypeS = "δ֪�豸"
ElseIf $DriveType = "Removable" Then;�ж��������Ƿ� Removable ����
    $DriveTypeS = "���ƶ�����"
ElseIf $DriveType = "Fixed" Then;�ж��������Ƿ� Fixed ����
        $DriveTypeS = "���ش���"
ElseIf $DriveType = "Network" Then;�ж��������Ƿ� Network ����
        $DriveTypeS = "����������"
ElseIf $DriveType = "CDROM" Then;�ж��������Ƿ� CDROM ����
            $DriveTypeS = "����"
ElseIf $DriveType = "RAMDiskk" Then;�ж��������Ƿ� RAMDiskk ����
        $DriveTypeS = "�ڴ���"
EndIf
    GUICtrlSetData($Combo1,$L_Name & "[ ���:" & $DriveLabel & "  �ļ�ϵͳ:" & $DriveFile & "  �ܴ�С:" & $DriveTotalGB & " ]  "&$DriveTypeS)
        ;��⵽�б��е����ݱ�ѡ��ʱ�޸���Ͽ��б�����
EndIf
    EndSwitch                                                                                
EndSwitch
         Return $GUI_RUNDEFMSG
EndFunc
;-------------------------------------------------------
Func WM_COMMAND($hWnd, $Msg, $wParam, $lParam)
    Local $IdFrom, $iCode
    $IdFrom = BitAnd($wParam, 0x0000FFFF)
    $iCode = BitShift($wParam, 16)        
   Switch $iCode
Case 1
        Switch $IdFrom
Case $Combo1
        $thesel=_GUICtrlComboBox_GetCurSel($Combo1);�ж�ѡ�����̷��б���еĵڼ���
        _GUICtrlListView_SetItemSelected($Disk,$thesel) ;ѡ���̷��б����ĳ���ͬʱѡ���б��ж�Ӧ����Ŀ   
EndSwitch
    EndSwitch
Endfunc
;-----------------------------------------------------------------------------------
Func Alldisk()
    _GUICtrlListView_DeleteAllItems($Disk) ;ɾ���б��е�����Ԫ��,��ֹˢ��ʱ���ݵ���
        GUICtrlSetData($Combo1,"") ;�����Ͽ��б����ݣ���ֹˢ��ʱ���ݵ���
If GUICtrlRead($Checkbox1) = $GUI_CHECKED Then ;�Ѿ�ѡ�С���ʾȫ������ѡ��
    $var = DriveGetDrive("ALL");����һ������ָ���������̷�������
If Not @error Then
        For $i = 1 To $var[0]
                Dim $Vars[$var[0] + 1]
$Vars[$i] = StringUpper($var[$i]);ת���ַ���Ϊ��д��ĸ
                $DriveType = DriveGetType($var[$i]);����
                $DriveFile = DriveGetFileSystem($var[$i]);��ʽ
                $DriveFree = DriveSpaceFree($var[$i]);���ÿռ�
                $DriveFreeGB = ByteConversion($DriveFree);��λת��
                $DriveLabel =DriveGetLabel($var[$i]);���
                $DriveTotal = DriveSpaceTotal($var[$i]);�ܴ�С
                $DriveTotalGB = ByteConversion($DriveTotal);��λת��                        
If $DriveType = "Unknown" Then;�ж��������Ƿ� Unknown ����
    $DriveTypeS = "δ֪�豸"
ElseIf $DriveType = "Removable" Then;�ж��������Ƿ� Removable ����
    $DriveTypeS = "���ƶ�����"
ElseIf $DriveType = "Fixed" Then;�ж��������Ƿ� Fixed ����
        $DriveTypeS = "���ش���"
ElseIf $DriveType = "Network" Then;�ж��������Ƿ� Network ����
        $DriveTypeS = "����������"
ElseIf $DriveType = "CDROM" Then;�ж��������Ƿ� CDROM ����
            $DriveTypeS = "����"
ElseIf $DriveType = "RAMDiskk" Then;�ж��������Ƿ� RAMDiskk ����
        $DriveTypeS = "�ڴ���"
EndIf
                GUICtrlSetData($Combo1, $Vars[$i] & "[ ���:" & $DriveLabel & "  �ļ�ϵͳ:" & $DriveFile & "  �ܴ�С:" & $DriveTotalGB & " ]  "&$DriveTypeS, _
                $Vars[0] & "[ ���: "& $DriveLabel & "  �ļ�ϵͳ:" & $DriveFile &  "  �ܴ�С:"& $DriveTotalGB & " ]  "&$DriveTypeS)
                GUICtrlCreateListViewItem($Vars[$i] & "|"&$DriveLabel & "|" & $DriveTypeS & "|" & $DriveFile & "|" & $DriveFreeGB & "|" & $DriveTotalGB, $Disk)
        GUICtrlSetImage(-1, "shell32.dll", 8);�޸���Ͽ��б����ݲ�����ָ���ؼ���λͼ��ͼ��
Next
    EndIf
EndIf
    If GUICtrlRead($Checkbox1) = $GUI_UNCHECKED Then ;û��ѡ�С���ʾȫ������ѡ����ֻ��ʾUSB�洢�豸
USBdisk()
   EndIf
EndFunc
;-------------------------------------------------------------------------------
Func USBdisk() 
   _GUICtrlListView_DeleteAllItems($Disk) ;ɾ���б��е�����Ԫ��,��ֹˢ��ʱ���ݵ���
        GUICtrlSetData($Combo1,"") ;�����Ͽ��б����ݣ���ֹˢ��ʱ���ݵ���
        $us = 0
        GetPartionMsg("USB")
If $us = 0 Then
        For $i = 1 To $us
$pf[$i] = StringUpper($pf[$i])
                Next
        EndIf
$usb = ""
        For $i = 1 To $us
                $usb = $pf[$i]
                $DriveType = DriveGetType($pf[$i]);����
                $DriveFree = DriveSpaceFree($pf[$i]);���ÿռ�
                $DriveFreeGB = ByteConversion($DriveFree);��λת��
                $DriveFile = DriveGetFileSystem($pf[$i]);�ļ�ϵͳ
                $DriveLabel =DriveGetLabel($pf[$i]);���
                $DriveTotal = DriveSpaceTotal($pf[$i]);�ܴ�С
                $DriveTotalGB = ByteConversion($DriveTotal);                                        
If $DriveType = "Unknown" Then;�ж��������Ƿ� Unknown ����
    $DriveTypeS = "δ֪�豸"
ElseIf $DriveType = "Removable" Then;�ж��������Ƿ� Removable ����
    $DriveTypeS = "���ƶ�����"
ElseIf $DriveType = "Fixed" Then;�ж��������Ƿ� Fixed ����
        $DriveTypeS = "���ش���"
ElseIf $DriveType = "Network" Then;�ж��������Ƿ� Network ����
        $DriveTypeS = "����������"
ElseIf $DriveType = "CDROM" Then;�ж��������Ƿ� CDROM ����
            $DriveTypeS = "����"
ElseIf $DriveType = "RAMDiskk" Then;�ж��������Ƿ� RAMDiskk ����
        $DriveTypeS = "�ڴ���"
EndIf
         GUICtrlSetData($Combo1, $pf[$i] & "[ ���:" & $DriveLabel & "  �ļ�ϵͳ:" & $DriveFile & "  �ܴ�С:" & $DriveTotalGB & " ]  "&$DriveTypeS, _
                 $pf[0] & "[ ���: "  & $DriveLabel & "  �ļ�ϵͳ: "  & $DriveFile & "  �ܴ�С: " & $DriveTotalGB & " ]  "&$DriveTypeS)
         GUICtrlCreateListViewItem($pf[$i] & "|"&$DriveLabel & "|" & $DriveTypeS & "|"& $DriveFile & "|" & $DriveFreeGB & "|" & $DriveTotalGB, $Disk)                
                 GUICtrlSetImage(-1, "shell32.dll", 8);�޸���Ͽ��б����ݲ�����ָ���ؼ���λͼ��ͼ��        
   Next
EndFunc 
;------------------------------------��λת������-----------------------------------------
Func ByteConversion($lBytes)
        If $lBytes < 1024 Then
                Return Round($lBytes, 2) & "MB"
        ElseIf $lBytes < 1048576 Then
                Return Round($lBytes / 1024, 2) & "GB"
        EndIf
EndFunc  
;-----------------------------------------------------------------------------------------
Func GetPartionMsg($Interface)
        $objWMIService = ObjGet("winmgmts:\\.\root\cimv2")
        $colItems = $objWMIService.ExecQuery("Select * from Win32_LogicalDiskToPartition")
        For $objItem In $colItems
                $DiskFH = StringLeft(StringRight($objItem.Dependent, 3), 2)
                $PartNum = QueryDiskNum($DiskFH)
                If StringMid($PartNum, 2, 3) = $Interface Then
                        $us += 1
                        $pf[$us] = "(" & StringMid($PartNum, 6)
                        $pf[$us] = $DiskFH
                EndIf
        Next
EndFunc   

Func QueryDiskInterface($n)
        $objWMIService = ObjGet("winmgmts:\\.\root\cimv2")
        $colItems = $objWMIService.ExecQuery("Select * from Win32_DiskDrive Where Index=" & $n)
        For $objItem In $colItems
                Return $objItem.InterfaceType
        Next
EndFunc   

Func QueryDiskNum($d)
        $objWMIService = ObjGet("winmgmts:\\.\root\cimv2")
        $colItems = $objWMIService.ExecQuery("Associators of {win32_LogicalDisk.DeviceID='" & $d & "'} where ResultClass = Win32_DiskPartition")
        For $colItem In $colItems
                Return "(" & QueryDiskInterface($colItem.DiskIndex) & ":hd" & $colItem.DiskIndex & ")"
        Next
EndFunc 