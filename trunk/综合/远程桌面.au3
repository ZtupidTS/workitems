#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=L:\����\�ۺ����\3D���ICOͼ��\earth.ico
#PRE_Outfile=Զ������(chtyal50).exe
#PRE_UseUpx=n
#PRE_Res_Comment=Сվ����
#PRE_Res_Description=Сվ����
#PRE_Res_Fileversion=2.0.0.0
#PRE_Res_LegalCopyright=Сվ����
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <Process.au3>
ShellExecute("mstsc.exe","","C:\Windows\System32")
WinWait("Զ����������")
WinActivate("Զ����������")
ControlClick("Զ����������","ѡ��(&O)","[ID:5017]")
Sleep(500)
ControlClick("Զ����������","","[ID:13050]","left")
ControlSetText("Զ����������","","[ID:13050]","192.168.2.50")
ControlClick("Զ����������","","[ID:13064]")
ControlSetText("Զ����������","","[ID:13064]","chtyal")
ControlClick("Զ����������","����(&N)","[ID:1]")
WinWait("Windows ��ȫ")
ControlClick("Windows ��ȫ","","Edit1")
Send("123456")
Sleep(500)
ControlClick("Windows ��ȫ","ȷ��","Button2")
WinWait("Զ����������")
Sleep(500)
ControlClick("Զ����������","��(&Y)","Button5")