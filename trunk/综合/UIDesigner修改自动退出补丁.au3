#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_Icon=J:\UIDesigner2\UIDesigner.exe
#PRE_Outfile=C:\Users\chtyfox\Desktop\UIDesigner�޸��Զ��˳�����.exe
#PRE_Compression=4
#PRE_UseUpx=n
#PRE_Res_Fileversion=1.0.0.0
#PRE_Res_Fileversion_AutoIncrement=p
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#Region ACNԤ����������(���ò���)
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
#include <EditConstants.au3>
$I1 =  StringReplace(RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\UIDesigner","DisplayIcon"), "UIDesigner.exe", "")
FileInstall("Config.config",$I1 & "resource\",1) 
;$2 = $I1 & "resource\"
;MsgBox(0,0,$2)

#cs  ;����Config.config
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
    <appSettings>
        <add key="WindowState" value="Maximized" />
        <add key="AdvanceToolPropertySort" value="Alphabetical" />
        <add key="ShowAdvanceTool" value="True" />
        <add key="ShowGrid" value="False" />
        <add key="CustomColorsList" value="" />
        <add key="PreviewKeyDownLargeChange" value="8" />
        <add key="LatestSolution" value="D:\UI��ƹ��߲���\������Ŀ����" />
        <add key="WindowTop" value="208" />
        <add key="WindowLeft" value="241" />
        <add key="WindowHeight" value="619" />
        <add key="WindowWidth" value="798" />
        <add key="PreviewShowDialogMode" value="True" />
        <add key="SolutionLoad" value="True" />
        <add key="DesignFormCanMoved" value="True" />
        <add key="ImageExportFileStyle" value="2" />
        <add key="ProjectInfoPanelVisible" value="True" />
        <add key="CurrentSkinName" value="DemoSkin" />
        <add key="CurrentTaskName" value="dd" />
        <add key="CurrentFileName" value="������" />
        <add key="WorkingFolder" value="M:\UIDtest" />
        <add key="AutoUpdate" value="True" />
        <add key="JoinUX" value="False" />
        <add key="UpdateEXE" value="Update.exe" />
        <add key="ShowGuidePage" value="True" />
        <add key="DesignerColor" value="79, 86, 92" />
        <add key="Online" value="False" />
        <add key="Dockconfig" value="\resource\UserDock.config" />
    </appSettings>
    <connectionStrings>
        <add name="PWServer" connectionString="http://www.tencent.com" />
        <add name="Server" connectionString="svn://111.16.103.2/document" />
    </connectionStrings>
</configuration>

#ce