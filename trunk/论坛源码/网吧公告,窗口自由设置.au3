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
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
Dim $GetFile = @ScriptDir & "\Status.ini", $GetStatus = "����״̬"
If Not FileExists($GetFile) Then
        ;        MsgBox(48,"��ܰ������:", "δ�ҵ����������ļ�,�����Զ�����."& @CRLF &"�뽫�ļ��ڵķ�����·���޸ĳ��Լ���ʵ��·��.")
        IniWrite($GetFile, $GetStatus, "�Ƿ���", "��")
        IniWrite($GetFile, $GetStatus, "���ڿ��", "300")
        IniWrite($GetFile, $GetStatus, "���ڸ߶�", "200")
        IniWrite($GetFile, $GetStatus, "���ɱ���", "���ɻ�ӭ��")
        IniWrite($GetFile, $GetStatus, "�������", "�������¹���")
        IniWrite($GetFile, $GetStatus, "������ɫ", "0xB50101")
        IniWrite($GetFile, $GetStatus, "�����С", "9")
        IniWrite($GetFile, $GetStatus, "��ʱ�ر�", "30")
        IniWrite($GetFile, $GetStatus, "ʹ������", "����")
        IniWrite($GetFile, $GetStatus, "����ʱ��", "2011-03-08")
        IniWrite($GetFile, $GetStatus, "����·��", "\\game\zh29$\Notice")
EndIf

;�������
Global $Switch = IniRead($GetFile, $GetStatus, "�Ƿ���", "")
Global $Width = IniRead($GetFile, $GetStatus, "���ڿ��", "")
Global $Height = IniRead($GetFile, $GetStatus, "���ڸ߶�", "")
Global $WbTitle = IniRead($GetFile, $GetStatus, "���ɱ���", "")
Global $NtTitle = IniRead($GetFile, $GetStatus, "�������", "")
Global $Color = IniRead($GetFile, $GetStatus, "������ɫ", "")
Global $Size = IniRead($GetFile, $GetStatus, "�����С", "")
Global $GetTime = IniRead($GetFile, $GetStatus, "��ʱ�ر�", "")
Global $Fonts = IniRead($GetFile, $GetStatus, "ʹ������", "")
Global $GetDate = IniRead($GetFile, $GetStatus, "����ʱ��", "")
Global $GetPath = IniRead($GetFile, $GetStatus, "����·��", "")
Global $Content = IniRead($GetFile, $GetStatus, "��������", "")
Global $Reate = GUICreate($WbTitle, $Width, $Height, -1, -1, BitOR($WS_MINIMIZEBOX, $WS_POPUP, $WS_GROUP), BitOR($WS_EX_TOOLWINDOW, $WS_EX_TOPMOST, $WS_EX_WINDOWEDGE), WinGetHandle(AutoItWinGetTitle()))
If $Switch <> "��" Then _Exit()
If FileExists($GetPath) Then
        If StringRight($GetPath, 3) <> "txt" Then $GetPath = $GetPath & "\���ɹ���.txt"
        If FileExists($GetPath) Then
                FileCopy($GetPath, @ScriptDir & "\Status.txt", "1")
                $GetPath = @ScriptDir & "\Status.txt"
                Global $ReadTxt = FileRead($GetPath, FileGetSize($GetPath))
        Else
                Global $ReadTxt = $Content
        EndIf
Else
        Global $ReadTxt = $Content
EndIf

Global $Group = GUICtrlCreateGroup("", 5, 28, $Width - 10, $Height - 50);������

Global $Label = GUICtrlCreateLabel($NtTitle, 10, 10, $Width - 20, 20);������
GUICtrlSetStyle(-1, 0x01)
GUICtrlSetFont(-1, 12, 800, 0, $Fonts)
GUICtrlSetColor(-1, 0xff0000)

Global $Edit1 = GUICtrlCreateEdit("", 10, 40, $Width - 21, $Height - 69, $ES_READONLY, 0)
GUICtrlSetData(-1, StringFormat($ReadTxt))
GUICtrlSetFont(-1, $Size, 0, 0, $Fonts)
GUICtrlSetColor(-1, $Color)

;Global $Labe2 = GUICtrlCreateLabel($GetDate, 343, 453, 100, 15);��ȡINI�ļ��ĸ���ʱ����Ϣ
;GUICtrlSetColor(-1, $Color)

Global $Time_Labe1 = GUICtrlCreateLabel("", 8, $Height - 16, $Width - 95, 20);ʱ�䵹��ʱ�ؼ�
GUICtrlSetColor(-1, 0xff0033);���ÿؼ��ı���ɫ
Global $Time_Labe2 = GUICtrlCreateButton("��ͣ", $Width - 90, $Height - 22, 40, 20)
Global $Time_Labe3 = GUICtrlCreateButton("�ر�", $Width - 45, $Height - 22, 40, 20)


GUISetState(@SW_SHOW);�������ڵ�״̬,@SW_SHOW��ʾ"ʹ�����ش�����ʾ����"
If $GetTime > 1 Then AdlibRegister("time", 1000)
If $GetTime = "" Or $GetTime <= 0 Then GUICtrlSetState($Time_Labe2, $GUI_HIDE)
If $GetTime > 1 Then Global $x = $GetTime

While 1;���ڱ��ʽѭ��
        $nMsg = GUIGetMsg();���񴰿���Ϣ
        Select;����ѡ�����
                Case $nMsg = $GUI_EVENT_CLOSE
                        _Exit()
                Case $nMsg = $Time_Labe2
                        If GUICtrlRead($Time_Labe2) = "��ͣ" Then
                                AdlibUnRegister()
                                GUICtrlSetData($Time_Labe2, "����")
                                GUICtrlSetData($Time_Labe1, "�ѹر��Զ�����ʱ�˳�����.")
                        Else
                                AdlibRegister("time", 1000)
                                GUICtrlSetData($Time_Labe2, "��ͣ")
                        EndIf
                Case $nMsg = $Time_Labe3
                        _Exit()
        EndSelect
WEnd

Func Time();����ʱִ�����
        If $x = 0 Then
                _Exit()
        EndIf
        GUICtrlSetData($Time_Labe1, "������ " & $x & " ����Զ��ر�.")
        $x -= 1
EndFunc   ;==>Time

;------------------------------�رմ��ڵ���---------------------------------------------------------
Func _Exit()
        DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $Reate, "int", 500, "long", 0x00090000)
        Exit
EndFunc   ;==>_Exit