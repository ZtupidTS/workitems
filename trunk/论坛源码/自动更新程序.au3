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

#include <GUIConstants.au3>
#include <Misc.au3>
Opt ("GUIOnEventMode", 1)
 
Dim $Title = "AutoUpdata"
Dim $FilePath_Server = "http://mail.126.com";;�ŷ����n��
Dim $FilePath_Local = "k:\run.exe" ;;��Ҫ���³�ʽ��·��
 
_Singleton ($Title);;�H���S��ʽ�Ϊ�����
 
_Check();;ǰ�Ùz�����I
 
GUICreate ( $Title, 280, 80)
 
GUICtrlCreateLabel ("�����M��", 10, 20)
 
$Progres = GUICtrlCreateProgress ( 70, 15, 200, 20)
GUICtrlCreateButton ("�_ʼ����", 70, 50, 60, 20)
        GUICtrlSetOnEvent ( -1, "_Start")
GUICtrlCreateButton ( "�x�_", 150, 50, 60, 20)
        GUICtrlSetOnEvent ( -1, "_Exit")
 
GUISetState ()
 
While True
        Sleep (50)
WEnd
 
Func _Exit()
        Exit
EndFunc
 
Func _Start()
        $TotalSize = InetGetSize ($FilePath_Server) ;; ȡ�ÿ�����
        $hDownload = InetGet ($FilePath_Server, $FilePath_Local, 1, 1) ;;�_ʼ���d
 
        Do
                Sleep (50)
                $NowDownload = InetGetInfo($hDownload, 0)
 
                $per = Int ($NowDownload/$TotalSize*100) ;;Ӌ��ٷֱ�
                $res = Int (StringLeft ( $per, 3)) ;;�ٷ�ֵ
                GUICtrlSetData ($progres , $res) ;;���d�M��
 
                TrayTip ( "�������d������", "�����d " & ($NowDownload/1024)&" kB", 1) ;;�Oҕ�����d��С
 
        Until InetGetInfo ( $hDownload, 2)
 
        GuiCtrlSetData ( $progres , 0)
 
        If $TotalSize = FileGetSize ($FilePath_Local) Then
                MsgBox ( 0, "�������", "�n����С��" &Int ($TotalSize/1024)&" kB"&@CRLF&"�����d��С��" & Int ($NowDownload/1024)&" kB")
                Run($FilePath_Local) ;;���г���
                Exit
        Else
                MsgBox ( 16, "�e�`", "����ʧ����")
        EndIf
 
EndFunc
 
Func _Check()
        $Ping = Ping ( "8.8.8.8", 500) ;;;�z��W·�Ƿ�ͨ��
 
        If $Ping Then
                TrayTip ( "�ԄӸ��³���", "���ڙz��n��...", 2)
        Else
                MsgBox ( 16, "����", "�W·�B�Yʧ����Ո�����هLԇ��")
                Exit
        EndIf
 
        $FileSize_Server = InetGetSize ($FilePath_Server);;ȡ���ŷ����n���Ĵ�С
        If @error Then
                MsgBox ( 36, "����", "�o��ȡ���ŷ���ӍϢ��")
                Exit
        EndIf
 
        $FileSize_Local = FileGetSize ("run.exe");;ȡ�ñ��C�n����С
        If @error Then
                If MsgBox ( 36, "����", "�o��ȡ�Ùn���YӍ���Ƿ��^�m���d��") = 7 Then Exit
        EndIf
 
        If $FileSize_Server = $FileSize_Local Then
            MsgBox( 0, "��ʾ", "�n���z�����"&@CRLF&"Ŀǰ�ў����°档")
            Exit
        EndIf
EndFunc