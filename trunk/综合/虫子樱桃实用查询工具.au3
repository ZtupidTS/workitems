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
 
#AutoIt3Wrapper_outfile=����ӣ��ʵ�ò�ѯ����.exe
 
#AutoIt3Wrapper_Res_Comment=������������ܹ�����ľ���115���������У�
 
#AutoIt3Wrapper_Res_Description=����ӣ��ʵ�ò�ѯ����
 
#AutoIt3Wrapper_Res_LegalCopyright=����ӣ��
 
#EndRegion ;**** ���������� ACNWrapper_GUI ****
 
#include <GUIConstants.au3>
 
#include <ButtonConstants.au3>
 
#include <ComboConstants.au3>
 
#include <GUIConstantsEx.au3>
 
#include <StaticConstants.au3>
 
#include <WindowsConstants.au3>
 
#include <IE.au3>
 
Dim $mainwindow,$Dll,$Combo1,$Label2,$Label3,$Button1,$Button2,$xz,$url,$oIE,$ie,$GUIActiveX,$GUI_Button_Forward,$GUI_Button_Home,$GUI_Button_Stop
 
$mainwindow=GUICreate("����ӣ��ʵ�ò�ѯ����", 392, 135, 193, 125)
 
FileInstall("c:\SkinCrafterDll.dll",@TempDir&"\")
 
FileInstall("c:\vista.skf",@TempDir&"\")
 
_SkinGUI(@TempDir&"\SkinCrafterDll.dll", @TempDir&"\Vista.skf", $mainwindow)
 
Func _SkinGUI($SkincrafterDll, $SkincrafterSkin, $Handle)
 
   $Dll = DllOpen($SkincrafterDll)
 
   DllCall($Dll, "int:cdecl", "InitLicenKeys", "wstr", "1", "wstr", "", "wstr", "1@1.com", "wstr", "1")
 
   DllCall($Dll, "int:cdecl", "InitDecoration", "int", 1)
 
   DllCall($Dll, "int:cdecl", "LoadSkinFromFile", "wstr", $SkincrafterSkin)
 
   DllCall($Dll, "int:cdecl", "DecorateAs", "int", $Handle, "int", 25)
 
   DllCall($Dll, "int:cdecl", "ApplySkin")
 
EndFunc
 
Func Quit()
 
    GUISetState(@SW_HIDE)
 
    DllCall($dll, "int:cdecl", "DeInitDecoration")
 
    DllCall($dll, "int:cdecl", "RemoveSkin")
 
    DllClose($dll)
 
    ;DirRemove(@AppDataDir&"\skin",1)
 
    Exit
 
EndFunc
 
$Combo1 = GUICtrlCreateCombo("--��ѡ����Ҫ��ѯ������--", 16, 32, 161, 25)
 
GUICtrlSetData(-1, "���ٲ��Թ���|�ֻ������ز�ѯ|���֤�����ѯ|��վIP��ѯ|�����ʱ��ѯ|���ƺ����ѯ|��վ�ۺϲ�ѯ")
 
GUICtrlCreateGroup("˵��", 192, 8, 185, 105)
 
$Label2 = GUICtrlCreateLabel("�����߼������ٲ��Թ���|�ֻ������ز�ѯ|���֤�����ѯ|��վIP��ѯ|�����ʱ��ѯ|���ƺ����ѯ|��վ�ۺϲ�ѯ������ʵ�ù��ܡ������߽�����������������������;��", 200, 24, 175, 80)
 
GUICtrlCreateGroup("", -99, -99, 1, 1)
 
GUICtrlCreateLabel("��ѡ����Ҫ��ѯ������", 16, 16, 124, 17)
 
$Label3 = GUICtrlCreateLabel("˼Զ������̳ ����ӣ�� ��Ʒ", 17, 99, 170, 17)
 
$Button1 = GUICtrlCreateButton("��ʼ��ѯ", 16, 64, 75, 25, 0)
 
$Button2 = GUICtrlCreateButton("�˳�", 104, 64, 75, 25, 0)
 
GUISetState(@SW_SHOW)
 
While 1
 
$nMsg = GUIGetMsg()
 
Switch $nMsg
 
Case $GUI_EVENT_CLOSE
 
FileDelete(@TempDir&"\SkinCrafterDll.dll")
 
   FileDelete(@TempDir&"\Vista.skf")
 
   Quit()
 
   Exit
 
  Case $Button1
 
   GUISetState(@SW_HIDE)
 
   $xz=GUICtrlRead($Combo1)
 
   Select
 
    Case $xz="���ٲ��Թ���"
 
     $url="http://tool.115.com/live/speed"
 
    Case $xz="�ֻ������ز�ѯ"
 
     $sj=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ���ֻ�����")
 
     $url="http://tool.115.com/shouji/"&$sj
 
    Case $xz="���֤�����ѯ"
 
     $sfz=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ�����֤����")
 
     $url="http://tool.115.com/live/idcard/q/"&$sfz
 
    Case $xz="��վIP��ѯ"
 
     $ip=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ����վ")
 
     $url="http://tool.115.com/ip/"&$ip
 
    Case $xz="�����ʱ��ѯ"
 
     $cs=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ�ʱ�ĳ���")
 
     $url="http://tool.115.com/youbian/"&$cs
 
    Case $xz="���ƺ����ѯ"
 
     $cp=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ���ƺ���")
 
     $url="http://tool.115.com/live/chepai/q/"&$cp
 
    Case $xz="��վ�ۺϲ�ѯ"
 
     $wz=InputBox("����ӣ����ʾ��","��������Ҫ��ѯ����վ")
 
     $url="http://tool.115.com/siteall/"&$wz
 
   EndSelect
 
_IEErrorHandlerRegister ()
 
$oIE = _IECreateEmbedded ()
 
$ie=GUICreate("����ӣ��ʵ�ò�ѯ����", 640, 500, (@DesktopWidth - 640) / 2, (@DesktopHeight - 580) / 2, $WS_OVERLAPPEDWINDOW + $WS_VISIBLE + $WS_CLIPSIBLINGS + $WS_CLIPCHILDREN)
 
$GUIActiveX = GUICtrlCreateObj($oIE, 10, 40, 600, 360)
 
$GUI_Button_Forward = GUICtrlCreateButton("���ߵĲ���", 120, 420, 100, 30)
 
$GUI_Button_Home = GUICtrlCreateButton("˼Զ��̳", 230, 420, 100, 30)
 
$GUI_Button_Stop = GUICtrlCreateButton("����", 340, 420, 100, 30)
 
GUISetState()    
_IENavigate ($oIE, $url)
 
While 1
 
$msg = GUIGetMsg()
 
Select
 
Case $msg = $GUI_EVENT_CLOSE
 
  Quit()
 
   ExitLoop
 
  Case $msg = $GUI_Button_Home
 
   _IENavigate ($oIE, "http://bbs.seeyoon.com")
 
  Case $msg = $GUI_Button_Forward
 
   _IENavigate ($oIE, "http://blog.sina.com.cn/leojayfan")
 
  Case $msg = $GUI_Button_Stop
 
   _IEQuit($oIE)
 
   Run(@ScriptFullPath)
 
    Quit()
 
   Exit
 
EndSelect
 
WEnd
 
  Case $Button2
 
   TrayTip("����ӣ����ʾ��","лл����ʹ�ã������˳�.....",1000)
 
   Sleep(1500)
 
   FileDelete(@TempDir&"\SkinCrafterDll.dll")
 
   FileDelete(@TempDir&"\Vista.skf")
 
   Quit()
 
   Exit
 
EndSwitch
 
WEnd