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
#AutoIt3Wrapper_icon=34650.ico
#AutoIt3Wrapper_outfile=�������ֺ�.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Res_Comment=�������ֺб��ذ�
#AutoIt3Wrapper_Res_Description=jienisԭ����SANMOKING��ǿ��
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_LegalCopyright=autoitx.com
#EndRegion ;**** ���������� ACNWrapper_GUI ****
_MyProExists() ;��ֹ�ظ�����(�����˼���֮ǰ���д��ڵĹ���^_^)
HotKeySet ( "{MEDIA_PLAY_PAUSE}", "play")
HotKeySet ( "{MEDIA_STOP}", "stop")
HotKeySet ( "{MEDIA_NEXT}", "nextt")
HotKeySet ( "{MEDIA_PREV}", "prev")
HotKeySet ( "^{F5}", "new")
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
Opt("GUIOnEventMode", 1);���ڵ��ģʽ
Opt("TrayOnEventMode", 1);���̲˵����ģʽ
Opt("GUIEventOptions", 1);�˵����ѡ��
Opt("TrayMenuMode", 3);���̲˵����ѡ��
TraySetClick(64) ; �����Ҽ�����ʾ���̲˵�.
$item00 = TrayCreateItem("��ͣ��")
TrayItemSetOnEvent(-1, "play")
TrayCreateItem("��һ�ש�")
TrayItemSetOnEvent(-1, "prev")
TrayCreateItem("��һ�ש�")
TrayItemSetOnEvent(-1, "nextt")
TrayCreateItem("��һ����")
TrayItemSetOnEvent(-1, "new")
 
 
TrayCreateItem("������")
TrayItemSetOnEvent(-1, "mun")
 
 
TrayCreateItem("");���̲˵��ָ���
 
 
$item03 = TrayCreateItem("���ش��ڡ�");�������̲˵���ʼ
TrayItemSetOnEvent(-1, "mini")
$item04 = TrayCreateItem("ȡ���ö��P");�������̲˵���ʼ
TrayItemSetOnEvent(-1, "Top")
TrayCreateItem("�˳������")
TrayItemSetOnEvent(-1, "Exitt")
TraySetState();�������̲˵�����
 
 
#include <IE.au3>
$Form1 = GUICreate("�������ֺ�", 300,375)
GUISetBkColor(0x004E98)
GUISetOnEvent($GUI_EVENT_MINIMIZE, "mini");��С��ʱִ��"��ʾ���ؽ���"����
GUISetOnEvent($GUI_EVENT_CLOSE, "Exitt");����ر�ʱִ��"��ʾ���ؽ���"����
$oIE = _IECreateEmbedded ()
 
$GUIActiveX= GUICtrlCreateObj($oIE, 3000,-27 ,307,500)
$txt=GUICtrlCreateLabel ( "���������벥������",100, 140) 
GUICtrlSetColor(-1, 0x9DB9EB)
GUISetState(@SW_SHOW)
_IENavigate ($oIE,"http://music.sina.com.cn/iframe/yueku/msnshell/msnshellplayer.shtml")
GUICtrlSetPos ($txt,3000,1000) 
GUICtrlSetPos ($GUIActiveX,-3,-27 ,307,500) 
$mini = 1
$play = 1
$mun = 1
$top = 0
Top()
new()
While 1
Sleep(10)
WEnd
 
 
Func play()
 
if $play = 0 Then
TrayItemSetText($item00, "��ͣ��")
 
_IEImgClick($oIE, "bfq_icon_01.gif","src")
$play = 1 
Else
TrayItemSetText($item00, "���š�")
 
_IEImgClick($oIE, "bfq_icon_08.gif","src")
 
$play = 0 
endif
EndFunc
Func stop()
_IEImgClick($oIE, "bfq_icon_02.gif","src")
 
EndFunc
Func prev()
_IEImgClick($oIE, "bfq_icon_03.gif","src")
 
EndFunc
Func nextt()
_IEImgClick($oIE, "bfq_icon_04.gif","src")
 
EndFunc
Func new()
_IEImgClick($oIE, "icon_21.gif","src")
 
EndFunc
Func mun();����
 
If $mun = 1 Then
 
_IEImgClick($oIE, "bfq_icon_05.gif","src")
 
 
$mun = 0
 
Else
 
_IEImgClick($oIE, "bfq_icon_09.gif","src")
 
 
$mun = 1
 
EndIf
EndFunc   
Func Top();�ö�
 
If $top = 1 Then
 
WinSetOnTop ($Form1 , "", 0) 
 
TrayItemSetText($item04, "�ö���ʾ��")
 
$top = 0
 
 
Else
 
WinSetOnTop ($Form1 , "", 1) 
 
TrayItemSetText($item04, "ȡ���ö��P")
 
$top = 1
 
EndIf
EndFunc  
 
 
Func mini();��С�����庯��
 
If $mini = 1 Then;�����������ʾ״̬
 
GUISetState(@SW_HIDE, $Form1);���ش���
 
TrayItemSetText($item03, "��ʾ���ڡ�");�޸����̲˵���һ�е�����
 
$mini = 0;�޸Ĵ����״̬��¼
 
Else
 
mini2();��ʾ�������
 
EndIf
EndFunc   ;==>Form1Minimize
Func mini2();��ԭ���庯��,ͬʱ���ظ��򿪳���ʱ�Ŀ�ݼ���
 
GUISetState(@SW_SHOW, $Form1);��ʾ����
 
TrayItemSetText($item03, "���ش��ڡ�");�޸����̲˵���һ�е�����
 
$mini = 1;�޸Ĵ����״̬��¼
EndFunc   ;==>Form1mize
 
 
Func Exitt()
 
Exit
EndFunc
Func _MyProExists() ;�ظ��򿪳�����ĺ���
 
$my_Version = "sanmoking���������ֺб��ع���xzfdsgdfgdf";���ø�����,�������ӹ�
 
If WinExists($my_Version) Then ;��⵽�иñ��������Ĵ���,�����Ͼ���ͬһ�������ظ�������
 
Send("^+!{NUMPADADD}");���»�ԭ���ڵĿ�ݼ�,��Ȼ��ԭ����֮ǰ���е��Ǹ�����Ĵ�����,^_^
 
Exit;�˳�������
 
EndIf
 
AutoItWinSetTitle($my_Version);����autoit����ı���,autoit���������
 
HotKeySet("^+!{NUMPADADD}", "mini2");����һ���ܰ����ش��廹ԭ�Ŀ�ݼ�,��ʵ��һ�зŵ�gui������֮���λ�������.��whileѭ��ǰ��..
EndFunc   ;==>_MyProExists
