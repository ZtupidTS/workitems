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

#include <GUIConstantsEx.au3>
 
Opt('MustDeclareVars', 1)
 
Example()
 
Func Example()
Local $parent1
    Local $tab, $msg,$Button1,$Radio1,$Radio2,$Radio3,$Radio4,$Radio5,$Radio6,$Radio7,$Radio8,$Checkbox1,$Checkbox2,$Input1
        Local $tab0,$msg,$Button1,$Radio1,$Radio2,$Radio3,$Radio4,$Radio5,$Radio6,$Radio7,$Radio8,$Checkbox1,$Checkbox2,$Input1
    Local $tab1,$msg,$Button1,$Radio1,$Radio2,$Radio3,$Radio4,$Radio5,$Radio6,$Radio7,$Radio8,$Checkbox1,$Checkbox2,$Input1
    Local $tab2,$msg,$Button1,$Radio1,$Radio2,$Radio3,$Radio4,$Radio5,$Radio6,$Radio7,$Radio8,$Checkbox1,$Checkbox2,$Input1
            
 
                
    $parent1 =GUICreate("�ϰ�ר��>>>������",623, 442, 245, 102); will create a dialog box that when displayed is centered
 
    GUISetBkColor(0xFFFFFF)
    GUISetFont(9, 300)
        
        $Button1 = GUICtrlCreateButton("��ʼ", 545, 416, 75, 25)
        GUICtrlSetOnEvent(-1, "OKPressed")
        
        $Button1 = GUICtrlCreateButton("Ĭ��ѡ��",470, 416, 75, 25)
        $Button1 = GUICtrlCreateButton("X��ɫ", 470, 390, 75, 25)
        $Button1 = GUICtrlCreateButton("N��ɫ",545, 390, 75, 25)
        $Button1 = GUICtrlCreateButton("�ڷ�λ��",500, 80, 75, 25)
        
        $Checkbox1 = GUICtrlCreateCheckbox("����",0,400, 40, 15)
        $Checkbox1 = GUICtrlCreateCheckbox("����",0,420, 40, 15)
        
        $Radio8 = GUICtrlCreateRadio("�ػ�",100,400, 40, 15)
        $Radio8 = GUICtrlCreateRadio("ע��",100,420, 40, 15)
        $Radio8 = GUICtrlCreateRadio("����",140,400, 40, 15)
        $Radio8 = GUICtrlCreateRadio("�ȴ�",140,420, 40, 15)
        
        $Input1 = GUICtrlCreateInput("HAO1X", 500, 20, 40, 20)
        $Input1 = GUICtrlCreateInput("HAO1Y", 550, 20, 40, 20)
        $Input1 = GUICtrlCreateInput("HAO2X", 500, 50, 40, 20)
        $Input1 = GUICtrlCreateInput("HAO2Y", 550, 50, 40, 20)
        
        
    $tab = GUICtrlCreateTab(0,0 , 800, 800)
        
    $tab0 = GUICtrlCreateTabItem("JS 01")
 
        
        
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("XD<��>", 0, 20, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,20, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,20, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,20, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,20, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,20, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,20, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,20, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,20, 30, 17)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox2 = GUICtrlCreateCheckbox("XD<��>", 0, 40, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,40, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,40, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,40, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,40, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,40, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,40, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,40, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,40, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("BT<��>", 0, 80, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,80, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,80, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,80, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,80, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,80, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,80, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,80, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,80, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("BT<��>", 0, 100, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,100, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,100, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,100, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,100, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,100, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,100, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,100, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,100, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("ND<��>", 0, 140, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,140, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,140, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,140, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,140, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,140, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,140, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,140, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,140, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("ND<��>", 0, 160, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,160, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,160, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,160, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,160, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,160, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,160, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,160, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,160, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("SL<��>", 0, 200, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,200, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,200, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,200, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,200, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,200, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,200, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,200, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,200, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("SL<��>", 0, 220, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,220, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,220, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,220, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,220, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,220, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,220, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,220, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,220, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("DF<��>", 0, 260, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,260, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,260, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,260, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,260, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,260, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,260, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,260, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,260, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("DF<��>", 0, 280, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,280, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,280, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,280, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,280, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,280, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,280, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,280, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,280, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("KN<��>", 0, 320, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,320, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,320, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,320, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,320, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,320, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,320, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,320, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,320, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("KN<��>", 0, 340, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,340, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,340, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,340, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,340, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,340, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,340, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,340, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,340, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
 
 
    $tab1 = GUICtrlCreateTabItem("JS 02")
    
        
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("XD<��>", 0, 20, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,20, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,20, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,20, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,20, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,20, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,20, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,20, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,20, 30, 17)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox2 = GUICtrlCreateCheckbox("XD<��>", 0, 40, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,40, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,40, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,40, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,40, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,40, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,40, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,40, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,40, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("BT<��>", 0, 80, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,80, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,80, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,80, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,80, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,80, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,80, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,80, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,80, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("BT<��>", 0, 100, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,100, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,100, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,100, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,100, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,100, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,100, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,100, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,100, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("ND<��>", 0, 140, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,140, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,140, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,140, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,140, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,140, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,140, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,140, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,140, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("ND<��>", 0, 160, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,160, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,160, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,160, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,160, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,160, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,160, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,160, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,160, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("SL<��>", 0, 200, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,200, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,200, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,200, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,200, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,200, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,200, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,200, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,200, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("SL<��>", 0, 220, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,220, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,220, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,220, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,220, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,220, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,220, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,220, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,220, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("DF<��>", 0, 260, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,260, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,260, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,260, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,260, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,260, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,260, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,260, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,260, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("DF<��>", 0, 280, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,280, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,280, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,280, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,280, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,280, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,280, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,280, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,280, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99)
$Checkbox1 = GUICtrlCreateCheckbox("KN<��>", 0, 320, 70, 15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,320, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,320, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,320, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,320, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,320, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,320, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,320, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,320, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
GUICtrlCreateGroup("", -99, -99, -99, -99) 
$Checkbox2 = GUICtrlCreateCheckbox("KN<��>", 0, 340, 70,15)
 
$Radio1 = GUICtrlCreateRadio("A1", 70,340, 30, 17)
$Radio2 = GUICtrlCreateRadio("A4", 100,340, 30, 17)
$Radio3 = GUICtrlCreateRadio("A7", 130,340, 30, 17)
$Radio4 = GUICtrlCreateRadio("D1", 160,340, 30, 17)
$Radio5 = GUICtrlCreateRadio("D8", 190,340, 30, 17)
$Radio6 = GUICtrlCreateRadio("E1", 220,340, 30, 17)
$Radio7 = GUICtrlCreateRadio("E2", 250,340, 30, 17)
$Radio8 = GUICtrlCreateRadio("NO", 280,340, 30, 17)
GUICtrlCreateGroup("", -99, -99, -99, -99)
 
 GUICtrlCreateTabItem(""); end tabitem definition
 
    GUISetState()
 
    ; Run the GUI until the dialog is closed
    While 1
        $msg = GUIGetMsg()
 
        If $msg = $GUI_EVENT_CLOSE Then ExitLoop
        If $msg = $tab Then
            ; display the clicked tab
            WinSetTitle("My GUI Tab", "", "My GUI Tab" & GUICtrlRead($tab))
        EndIf
    WEnd
EndFunc