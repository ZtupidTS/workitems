#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_Icon=J:\Office Tab\OfficeTabCenter(Admin).exe
#AutoIt3Wrapper_Outfile=Office Tab�ƽⲹ��.exe
#AutoIt3Wrapper_UseUpx=n
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
Opt("TrayIconHide",1)
$I1 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{DE469D65-1DEB-4058-BF95-C642D733668D}_is1", "InstallLocation")
$Form1_1 = GUICreate("Office Tab�ƽⲹ��",  330, 205, 332, 189)
$Input2 = GUICtrlCreateInput($I1,  120, 96, 169, 21)
$Button1 = GUICtrlCreateButton("ȷ��", 64, 136, 65, 25)
$Button2 = GUICtrlCreateButton("ȡ��", 188, 136, 65, 25)
$Label3 = GUICtrlCreateLabel("Office Tab  ·��", 12, 100, 96, 17)
$Label1 = GUICtrlCreateLabel("1 ���·����ȡʧ�����ֶ����·��" & @CRLF & "2 ʹ�ñ�����֮ǰ�ǵ�Ҫ����office�ļ�" & @CRLF & "3 �˳�office�ļ�������������Ч" & @CRLF & "4 Excel,PowerPoint,Word,Access����������    ���ر�,����û�������Ը�", 24, 16, 248, 65)
$Label2 = GUICtrlCreateLabel("Сվ����:�ƽ��ļ���Դ������", 8, 176, 163, 17)
;$Pic1 = GUICtrlCreatePic("C:\Users\chtyfox\Desktop\1\Penguins.jpg", 0, 0, 329, 201, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS));��GUI�ϴ���һ��ͼƬ�ؼ�
;GUICtrlSetCursor (-1, 0)  ;�ض��ؼ�ָ��һ�����ָ��
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
$nMsg = GUIGetMsg()
	Select 
		Case $nMsg = $GUI_EVENT_CLOSE
			Exit
		Case $nMsg = $Button2
			Exit
		Case $nMsg = $Button1
			pj()
			Exit
	EndSelect
WEnd

Func pj()
	ProcessClose("OfficeTabCenter.exe")
	ProcessClose("OfficeTabCenter(Admin).exe")
	ProcessClose("EXCEL.exe")
	ProcessClose("WINWORD.exe")
	ProcessClose("POWERPNT.exe")
	ProcessClose("MSACCESS.exe")
	FileInstall("OfficeTabFunction.dll","C:\Windows\System32\",1)
	FileInstall("TabsforAccess.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforExcel.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforPowerPoint.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforProject.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforPublisher.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforVisio.dll", GUICtrlRead ($Input2),1) 
	FileInstall("TabsforWord.dll", GUICtrlRead ($Input2),1) 
EndFunc