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
#NoTrayIcon
 
 
$g_szVersion = "info"
If WinExists($g_szVersion) Then Exit
AutoItWinSetTitle($g_szVersion)
 
Opt('GUICloseOnESC', 0)
 
 
GUICreate ("Ӳ����Ϣ�鿴��",500,350)
 
 
GUICtrlCreateLabel("B I O S��",10,30,60,30)
GUICtrlSetColor(-1,0x0000ff)
$bios=GUICtrlCreateInput("",80,20,250,25)
 
GUICtrlCreateLabel("��    �壺",10,70,60,30)
GUICtrlSetColor(-1,0x0000ff)
$board=GUICtrlCreateInput("",80,60,250,25)
 
GUICtrlCreateLabel("C   P  U��",10,110,60,30)
GUICtrlSetColor(-1,0x0000ff)
$cpu=GUICtrlCreateInput("",80,100,250,25)
 
GUICtrlCreateLabel("��    ����",10,150,60,30)
GUICtrlSetColor(-1,0x0000ff)
$display=GUICtrlCreateInput("",80,140,250,25)
 
GUICtrlCreateLabel("��    ����",10,190,60,30)
GUICtrlSetColor(-1,0x0000ff)
$sound=GUICtrlCreateInput("",80,180,250,25)
 
GUICtrlCreateLabel("��    ����",10,230,60,30)
GUICtrlSetColor(-1,0x0000ff)
$network=GUICtrlCreateInput("",80,220,250,25)
 
GUICtrlCreateLabel("��    �棺",10,270,60,30)
GUICtrlSetColor(-1,0x0000ff)
$mem=GUICtrlCreateInput("",80,260,250,25)
 
GUICtrlCreateLabel("����ϵͳ��",10,310,60,30)
GUICtrlSetColor(-1,0x0000ff)
$os=GUICtrlCreateInput("",80,300,250,25)
 
GUISetState( )
info()
 
While 1
    $msg = GUIGetMsg()
 
    Select
                          
      case $msg = $GUI_EVENT_CLOSE
        ExitLoop         
        EndSelect
Wend
 
 
Func info()
        
$objWMIService = objget("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
$colBios = $objWMIService.ExecQuery("Select * from Win32_BIOS")
$colBoard = $objWMIService.ExecQuery("SELECT * FROM Win32_BaseBoard")
$colSettings = $objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
$colMemory = $objWMIService.ExecQuery("Select * from Win32_ComputerSystem")
$colCPU = $objWMIService.ExecQuery("Select * from CIM_Processor")
$colVideoinfo = $objWMIService.ExecQuery("Select * from Win32_VideoController")
$colSound = $objWMIService.ExecQuery("Select * from Win32_SoundDevice")
$colMouse = $objWMIService.ExecQuery("Select * from Win32_PointingDevice")
$colMonitor = $objWMIService.ExecQuery("Select * from Win32_DesktopMonitor")
$colNIC = $objWMIservice.ExecQuery("Select * from Win32_NetworkAdapter WHERE Netconnectionstatus = 2")
 
 
For $object in $colBios
        GUICtrlSetData($bios,StringMid($object.Caption,1))
Next
 
 
 
For $object in $colBoard
        GUICtrlSetData($board,$object.Product)
        
Next
 
 
For $object in $colCPU
        GUICtrlSetData($cpu, StringStripWS($object.Name,1))
Next
 
For $object in $colVideoinfo
        GUICtrlSetData($display, StringStripWS($object.Description ,1))
   
Next
 
For $object in $colSound
        GUICtrlSetData($sound, StringStripWS($object.Description ,1))
  Next
 
For $object in $colNIC
        GUICtrlSetData($network, StringStripWS($object.name ,1))
  
Next
 
 
For $objOperatingSystem in $colSettings
 
GUICtrlSetData($os,$objOperatingSystem.Caption & " Build " & $objOperatingSystem.BuildNumber & " Sp " & $objOperatingSystem.ServicePackMajorVersion & "." & $objOperatingSystem.ServicePackMinorVersion )
 
Next
for $object  in $colMemory
        GUICtrlSetData($mem,String(Int(Number($object.TotalPhysicalMemory) / (1024 * 1024))) & " Mb")
Next
 
EndFunc