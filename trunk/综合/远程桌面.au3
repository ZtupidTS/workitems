#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=L:\����\�ۺ����\3D���ICOͼ��\earth.ico
#PRE_Outfile=Զ������.exe
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <Process.au3>
ShellExecute("mstsc.exe","","C:\Windows\System32")
WinWait("Զ����������")
WinActivate("Զ����������")
ControlClick("Զ����������","ѡ��(&O)","[ID:5017]")
Sleep(500)
ControlClick("Զ����������","","[ID:13050]","left",2)
Send("192.168.2.40")
;~ ControlClick("Զ����������","","[ID:13064]")
;~ Send("chty")
ControlClick("Զ����������","����(&N)","[ID:1]")
WinWait("Windows ��ȫ")
ControlClick("Windows ��ȫ","","Edit1")
Send("123456")
Sleep(500)
ControlClick("Windows ��ȫ","ȷ��","Button2")
WinWait("Զ����������")
Sleep(500)
ControlClick("Զ����������","��(&Y)","Button5")