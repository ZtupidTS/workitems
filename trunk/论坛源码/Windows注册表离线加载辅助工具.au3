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
#AutoIt3Wrapper_Icon=2.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Res_Comment=Windowsע������߼��ظ�������
#AutoIt3Wrapper_Res_Description=Windowsע������߼��ظ�������
#AutoIt3Wrapper_Res_LegalCopyright=����ӣ��
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <Constants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#Include <GuiListView.au3>
#include <ListViewConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
Dim $resultStr,$unloadresultStr
Opt("GUIOnEventMode", 1)
$Form1 = GUICreate("Windowsע������߼��ظ�������", 620, 451, 274, 151,BitOR($GUI_SS_DEFAULT_GUI,$WS_SIZEBOX,$WS_THICKFRAME))
GUICtrlCreateGroup("����ģʽ����", 8, 8, 589, 41)
$mountMode = GUICtrlCreateRadio("����ģʽ(��ϵͳ���Ѿ����ص�Wim���д���)", 16, 24, 249, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1,"modeCheck")
$simpleMode = GUICtrlCreateRadio("����ģʽ(�Ե���ע������õ�Ԫ�ļ����д���)", 281, 24, 297, 17)
GUICtrlSetOnEvent(-1,"modeCheck")
$getMountedInfoGroup = GUICtrlCreateGroup("��ȡ�ѹ��ؾ�����Ϣ", 9, 55, 589, 105)
$mounted_wiminfo = GUICtrlCreateEdit("", 17, 71, 481, 81)
GUICtrlSetData(-1, "")
GUICtrlSetColor(-1, 0x0000FF)
$get_mounted_wiminfo = GUICtrlCreateButton("��ȡ��Ϣ", 505, 71, 75, 81)
GUICtrlSetOnEvent($get_mounted_wiminfo,'getMountedWim')
$manualGetRight = GUICtrlCreateLabel('[1]ѡ��Ҫ��ȡȨ��ע�����Ҽ�ѡ��"Ȩ��-�߼�-������"��ѡ�е�ǰ��¼�û�������ѡ"�滻������'&@LF&'�Ͷ����������",��ȷ���˳���'&@LF&'[2]�ٴ�ѡ��Ҫ��ȡȨ��ע�����Ҽ�ѡ��"Ȩ��-�߼�-Ȩ��-���"�����뵱ǰ��¼�û��������"���'&@LF&'����"��ɺ���ȷ����'&@LF&'[3]��ѡ"��ȫ����-����"�����ȷ�����ɡ�', 16, 80, 570, 73)
$loadOptionGroup = GUICtrlCreateGroup("�ɼ������õ�Ԫ�б�", 9, 236, 589, 145)
$ListView1 = GUICtrlCreateListView("�ļ�λ��|���õ�Ԫ����|���õ�Ԫ˵��|��������", 17, 252, 570, 118, BitOR($GUI_SS_DEFAULT_LISTVIEW,$LVS_AUTOARRANGE), BitOR($WS_EX_CLIENTEDGE,$LVS_EX_CHECKBOXES,$LVS_EX_FULLROWSELECT ))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 146)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 90)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 250)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 80)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 146)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 90)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 250)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 80)
$ListView1_0 = GUICtrlCreateListViewItem("Users\Default\NTUSER.DAT|Default User|�����õ�Ԫ��¼��ϵͳ��Default�û�������|WIM_Default", $ListView1)
$ListView1_1 = GUICtrlCreateListViewItem("Windows\System32\Config\SOFTWARE|Software|HKLM\SOFTWARE|WIM_Software", $ListView1)
$ListView1_2 = GUICtrlCreateListViewItem("Windows\System32\Config\SYSTEM|System|HKLM\SYSTEM|WIM_System", $ListView1)
$ListView1_3 = GUICtrlCreateListViewItem("Users\Administrator\NTUSER.DAT|Administrator|�����õ�Ԫ��¼��ϵͳ��Administrator�û�������|WIM_Admin", $ListView1)
$ListView1_4 = GUICtrlCreateListViewItem("Windows\System32\Config\COMPONENTS|Components|HKLM\COMPONENTS|WIM_Components", $ListView1)
$ListView1_5 = GUICtrlCreateListViewItem("Windows\System32\Config\SAM|Sam|HKLM\SAM|WIM_SAM", $ListView1)
$setregLoadedNameLabel = GUICtrlCreateLabel("���ص�ע����е�����:", 24, 256, 127, 17)
$regLoadedName = GUICtrlCreateInput("", 160, 254, 121, 21)
$openInRegedit = GUICtrlCreateCheckbox("���سɹ����Զ���ע���༭���д�", 312, 256, 233, 17)
$selectRegGroup = GUICtrlCreateGroup("ѡ��Ҫ���߼���ע����wim����Ŀ¼", 9, 168, 590, 57)
$select_loadregpath = GUICtrlCreateLabel("δѡ��", 25, 192, 500, 17)
GUICtrlSetColor(-1, 0xFF0000)
$select_regpath = GUICtrlCreateButton("���", 505, 184, 75, 25)
GUICtrlSetOnEvent($select_regpath,'detecHivPath')
$loadSelected = GUICtrlCreateButton("������ѡ", 8, 392, 99, 41)
GUICtrlSetOnEvent($loadSelected,'HivLoadFunc')
$loadAll = GUICtrlCreateButton("ȫ������", 130, 392, 99, 41)
GUICtrlSetOnEvent($loadAll,'HivLoadAll')
$unloadSelected = GUICtrlCreateButton("ж����ѡ", 252, 392, 99, 41)
GUICtrlSetOnEvent($unloadSelected,'HivUnLoadFunc')
$unloadAll = GUICtrlCreateButton("ȫ��ж��", 375, 392, 99, 41)
GUICtrlSetOnEvent($unloadAll,'HivUnloadAll')
$quittool = GUICtrlCreateButton("�˳�", 499, 392, 99, 41)
GUICtrlSetOnEvent($quittool,'quittool')
modeCheck()
GUISetState(@SW_SHOW)
GUISetOnEvent($GUI_EVENT_CLOSE,"quittool")
While 1
        Sleep(100)
WEnd
;===============================================================================
; ���ܺ�����ʼ
;===============================================================================
 
;�˳�ʱ�ĺ���
Func quittool()
        cleanUpini()
        Exit
EndFunc
;��ȡϵͳ���Ѿ����ص�Wim��Ϣ
Func  getMountedWim()
        GUICtrlSetData($mounted_wiminfo,'')
        $cmdhandle = Run(@ComSpec&' /c dism /Get-MountedWimInfo',"",@SW_HIDE, $STDOUT_CHILD)
        ProcessWaitClose($cmdhandle)
        GUICtrlSetData($mounted_wiminfo,StdoutRead($cmdhandle))
EndFunc
;ѡ��ע������õ�Ԫ��Ŀ¼�����ļ�
Func detecHivPath()
        If GUICtrlRead($simpleMode) = $GUI_CHECKED Then
                GUICtrlSetData($select_loadregpath,FileOpenDialog('��ѡ����Ҫ���ص�ע������õ�Ԫ�ļ�','','(*.*;*.hiv)ע������õ�Ԫ�ļ�',1+2))
        ElseIf GUICtrlRead($mountMode) = $GUI_CHECKED Then
                GUICtrlSetData($select_loadregpath,FileSelectFolder('��ѡ���Ѿ����ص�wim���ص�','',1+2+4))
        Else
        EndIf
EndFunc
 
;��ȡע���Ԫ�ļ���Ŀ��ѡ��״̬�Լ�δѡ��״̬
Func HivLoadFunc()
        If GUICtrlRead($mountMode) = $GUI_CHECKED Then
                If FileExists(GUICtrlRead($select_loadregpath))Then
                        $resultStr = ''
                        For $i = 0 To 5
                           If _GUICtrlListView_GetItemChecked($ListView1, $i) = True Then
                                $str = _GUICtrlListView_GetItemTextArray($ListView1,$i)
                                   If FileExists(GUICtrlRead($select_loadregpath)&'\'&$str[1]) Then
                                         $regloadcmd = Run(@ComSpec&' /c REG LOAD HKLM\'&$str[4]&' '&GUICtrlRead($select_loadregpath)&'\'&$str[1],'',@SW_HIDE)
                                         ProcessWaitClose($regloadcmd)
                                         $resultStr &= 'λ��'&GUICtrlRead($select_loadregpath)&'\'&$str[1]&'��ע����ļ����ɹ����ص�HKEY_LOCAL_MACHINE\'&$str[4]&@LF
                                   Else
                                          $resultStr &= '�ļ�'&GUICtrlRead($select_loadregpath)&'\'&$str[1]&'�����ڣ���δ�ܳɹ����أ�'&@LF
                                   EndIf
                           EndIf
                   Next
                   MsgBox(0,'��ʾ',$resultStr,5)
           Else
                   MsgBox(16,"����","Wim����Ŀ¼δ����ȷ���ã����飡",3)
           EndIf
   ElseIf GUICtrlRead($simpleMode) = $GUI_CHECKED Then
           If GUICtrlRead($select_loadregpath) = 'δѡ��' Or FileExists(GUICtrlRead($select_loadregpath))=0 Then
                   MsgBox(16,'����','��ѡ����ȷ��ע������õ�Ԫ�ļ�',3)
           ElseIf GUICtrlRead($regLoadedName) = '' Then
                   MsgBox(16,'����','�������д���ص�ע����е����ƣ�',3)
           ElseIf GUICtrlRead($select_loadregpath) <> 'δѡ��' And FileExists(GUICtrlRead($select_loadregpath))=1 And GUICtrlRead($regLoadedName) <>'' Then
                   IniWrite(@ScriptDir&'\History.ini','HivLoadedHistory','HivPath',GUICtrlRead($select_loadregpath))
                   IniWrite(@ScriptDir&'\History.ini','HivLoadedHistory','HivloadedValue',GUICtrlRead($regLoadedName))
                   $regloadcmd = Run(@ComSpec&' /c REG LOAD HKLM\'&GUICtrlRead($regLoadedName)&' '&GUICtrlRead($select_loadregpath),'',@SW_HIDE)
                   ProcessWaitClose($regloadcmd)
                   IniWrite(@ScriptDir&'\History.ini','HivLoadedHistory','HivloadedValue',GUICtrlRead($regLoadedName))
                   IniWrite(@ScriptDir&'\History.ini','HivLoadedHistory','HivUnload','false')
                   GUICtrlSetState($regLoadedName,$GUI_DISABLE)
                   If GUICtrlRead($openInRegedit) = $GUI_CHECKED Then
                           RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit", "LastKey", "REG_SZ","HKEY_LOCAL_MACHINE\"&GUICtrlRead($regLoadedName))
                           Run('regedit.exe -m')
                   EndIf
           Else
           EndIf
   Else
   EndIf
EndFunc
;ȫ������
Func HivLoadAll()
        GUICtrlSetState($simpleMode,$GUI_DISABLE)
        _GUICtrlListView_SetItemChecked($ListView1,-1,True)
        HivLoadFunc()
        GUICtrlSetState($simpleMode,$GUI_ENABLE)
EndFunc
;ж���Ѿ����ؼ�ֵ
Func HivUnLoadFunc()
If GUICtrlRead($mountMode) = $GUI_CHECKED Then
        $t = 1
        Do
                $regEnumedKey = RegEnumKey("HKEY_LOCAL_MACHINE",$t)
                For $i = 0 To 5
                        $str = _GUICtrlListView_GetItemTextArray($ListView1,$i)
                        If _GUICtrlListView_GetItemChecked($ListView1, $i) = True Then
                                If $str[4] = $regEnumedKey Then
                                        If ProcessExists('regedit.exe') Then ProcessClose('regedit.exe')
                                   $regloadcmd = Run(@ComSpec&' /c REG UNLOAD HKLM\'&$regEnumedKey,'',@SW_HIDE)
                                   ProcessWaitClose($regloadcmd)
                                   $unloadresultStr &= 'λ��HKEY_LOCAL_MACHINE\'&$regEnumedKey&'��ע������õ�Ԫ�Ѿ����ɹ�ж��!'&@LF
                                   Run('regedit.exe')
                                EndIf
                        EndIf
                Next
                $t += 1
        Until $regEnumedKey = ''
        If $unloadresultStr <> '' Then
           MsgBox(0,'��ʾ',$unloadresultStr,5)
    Else
           MsgBox(0,'��ʾ','δ��ע����з��ֱ����ص�ע������õ�Ԫ��',5)
   EndIf
ElseIf GUICtrlRead($simpleMode) = $GUI_CHECKED Then
                If ProcessExists('regedit.exe') Then ProcessClose('regedit.exe')
           $regloadcmd = Run(@ComSpec&' /c REG UNLOAD HKLM\'&GUICtrlRead($regLoadedName),'',@SW_HIDE)
           ProcessWaitClose($regloadcmd)
           MsgBox(0,'��ʾ','λ��HKEY_LOCAL_MACHINE\'&GUICtrlRead($regLoadedName)&'��ע������õ�Ԫ�Ѿ����ɹ�ж�أ�',5)
           GUICtrlSetState($regLoadedName,$GUI_ENABLE)
           Run('regedit.exe')
           IniWrite(@ScriptDir&'\History.ini','HivLoadedHistory','HivUnload','true')
           GUICtrlSetData($regLoadedName,'')
           GUICtrlSetData($select_loadregpath,'δѡ��')
           GUICtrlSetState($regLoadedName,$GUI_ENABLE)
Else
EndIf
EndFunc
;ȫ��ж���Ѿ����ص�ע������õ�Ԫ
Func HivUnloadAll()
        GUICtrlSetState($simpleMode,$GUI_DISABLE)
        _GUICtrlListView_SetItemChecked($ListView1,-1,True)
        HivUnLoadFunc()
        GUICtrlSetState($simpleMode,$GUI_ENABLE)
EndFunc
;����ini�����ļ�
Func iniCheck()
        If FileExists(@ScriptDir&'\History.ini') = 0 Then
                $fhandle = FileOpen(@ScriptDir&'\History.ini',1+8)
                FileWrite($fhandle,'[HivLoadedHistory]'&@LF&'HivPath ='&@LF&'HivloadedValue ='&@LF&'HivUnload =')
                FileClose($fhandle)
        EndIf
EndFunc
;�����ڼ���ģʽʱ��������ʷ��¼
Func HistoryLoadFunc()
        iniCheck()
        If GUICtrlRead($simpleMode) = $GUI_CHECKED Then
                If IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivUnload','') = 'false' Then
                        GUICtrlSetState($regLoadedName,$GUI_DISABLE)
                        GUICtrlSetData($select_loadregpath,IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivPath',''))
                        GUICtrlSetData($regLoadedName,IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivloadedValue',''))
                        Run('regedit.exe -m')
        ElseIf IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivUnload','') = 'true' Then
            FileDelete(@ScriptDir&'\History.ini')
                        iniCheck()
        Else                    
                EndIf
        EndIf
EndFunc
;ģʽ���
Func modeCheck()
        If GUICtrlRead($simpleMode) = $GUI_CHECKED Then
                HistoryLoadFunc()
                GUICtrlSetState($mounted_wiminfo,$GUI_HIDE)
                GUICtrlSetState($get_mounted_wiminfo,$GUI_HIDE)
                GUICtrlSetState($ListView1,$GUI_HIDE)
                GUICtrlSetState($loadAll,$GUI_HIDE)
                GUICtrlSetState($unloadAll,$GUI_HIDE)
                GUICtrlSetData($getMountedInfoGroup,'�ֹ���ȡע���Ȩ�޷���')
                GUICtrlSetState($manualGetRight,$GUI_SHOW)
                GUICtrlSetData($loadOptionGroup,'����ѡ������')
                GUICtrlSetPos($loadOptionGroup,9, 236, 589, 49)
                GUICtrlSetState($setregLoadedNameLabel,$GUI_SHOW)
                GUICtrlSetState($regLoadedName,$GUI_SHOW)
                GUICtrlSetState($openInRegedit,$GUI_SHOW)
                GUICtrlSetData($selectRegGroup,'��ѡ����Ҫ�������߼��ص�ע������õ�Ԫ�ļ�')
                GUICtrlSetData($loadSelected,'��ʼ����')
                GUICtrlSetData($unloadSelected,'��ʼж��')
                GUICtrlSetPos($loadSelected,130)
                GUICtrlSetPos($quittool,375)
        Else
                GUICtrlSetState($mounted_wiminfo,$GUI_SHOW)
                GUICtrlSetState($getMountedInfoGroup,$GUI_SHOW)
                GUICtrlSetState($get_mounted_wiminfo,$GUI_SHOW)
                GUICtrlSetState($ListView1,$GUI_SHOW)
                GUICtrlSetState($loadAll,$GUI_SHOW)
                GUICtrlSetState($unloadAll,$GUI_SHOW)
                GUICtrlSetData($getMountedInfoGroup,'��ȡ�ѹ��ؾ�����Ϣ')
                GUICtrlSetState($manualGetRight,$GUI_HIDE)
                GUICtrlSetData($loadOptionGroup,'�ɼ������õ�Ԫ�б�')
                GUICtrlSetPos($loadOptionGroup, 9, 236, 589, 145)
                GUICtrlSetState($setregLoadedNameLabel,$GUI_HIDE)
                GUICtrlSetState($regLoadedName,$GUI_HIDE)
                GUICtrlSetState($openInRegedit,$GUI_HIDE)
                GUICtrlSetData($selectRegGroup,'ѡ��Ҫ���߼���ע����wim����Ŀ¼')
                GUICtrlSetData($loadSelected,'������ѡ')
                GUICtrlSetData($unloadSelected,'ж����ѡ')
                GUICtrlSetPos($loadSelected,8)
                GUICtrlSetPos($quittool,499)
        EndIf   
EndFunc
 
Func cleanUpini()
        If IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivPath','') = '' And IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivloadedValue','') = '' And IniRead(@ScriptDir&'\History.ini','HivLoadedHistory','HivUnload','') = '' Then
                FileDelete(@ScriptDir&'\History.ini')
        EndIf
EndFunc