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
#include <GuiListView.au3>
#Include <GuiTreeView.au3>
#Include <GuiTab.au3>
#include <SendMessage.au3>

;;¼�����
WinActivate("RVMSƽ̨--�����")
$hTab = ControlGetHandle("RVMSƽ̨--�����", "", "SysTabControl322")
_GUICtrlTab_ClickTab($hTab, 1, "left", True, 1)

$1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321");��ȡ�����б�ؼ����
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView321", "Expand", "universe")
$2 =_GUICtrlTreeView_FindItem($1, "universe")
_GUICtrlTreeView_ClickItem($1,$2,"left",True,2,2);��������б���Ŀ

;----------------------------------------------------------------------------------------------------
;9104B
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9104B0" & $k)
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9104B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9104B0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8


;----------------------------------------------------------------------------------------------------
;9108

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D91080" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D91080" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D910809" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D910809|¼�������")

$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;9108B

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B0" & $k & "|¼�������")
   
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B09|¼�������")
$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9108B" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9108B" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9604L
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9604L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9604L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9604B
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9604B0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9604B0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9608L

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L09|¼�������")
$i = 0
Do
If $k <=16 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9608L" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9608L" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9216H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9216H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9216H" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9316H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9316H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9316H" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9104
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D91040" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D91040" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

;----------------------------------------------------------------------------------------------------
;D9616L

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L0" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9616L" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9616L" & $k & "|¼�������")
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;----------------------------------------------------------------------------------------------------
;D9016H

WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�")
$k=1
$i = 0
Do
If $k <=8 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H0" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H0" & $k & "|¼�������")
   
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 8

WinActivate("RVMSƽ̨--�����")
$k=9
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H09" )
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H09|¼�������")
$i = 0
Do
If $k <=32 Then 
	ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9016H" & $k)
   ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Check", "ͨ���б�|D9016H" & $k & "|¼�������")
     
   $k=$k+1
EndIf
    $i = $i + 1
Until $i = 24

;��ʱ¼��
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9104B01")
  $1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321")
   $2 =_GUICtrlTreeView_FindItem($1, "¼�������")
  _GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2)
  
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button15")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button16")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button17")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button18")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button27")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")

WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button19")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button20")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button21")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button22")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button28")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")
ControlClick( "RVMSƽ̨--�����", "ȷ��", "Button29")
