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

;ע�͵������Զ���Ĳ˵����Լ�д��һ�����������Ӣ����̳�������Ƶģ��Ͱ�Ӣ����̳���Դ����������

#include <GUIConstants.au3>
#include<WindowsConstants.au3>

$oMyError = ObjEvent("AutoIt.Error","MyErrFunc")

$FileName=@ScriptDir & "\Worksheet.xls"

if not FileExists($FileName) then
  Msgbox (0,"Excel File Test","Can't run this test, because it requires an Excel file in "& $FileName)
  Exit
endif

$oExcelDoc = ObjGet($FileName) 

if IsObj($oExcelDoc) then

    GUICreate ( "Embedded ActiveX Test", 640, 580, (@DesktopWidth-640)/2, (@DesktopHeight-580)/2 , $WS_OVERLAPPEDWINDOW + $WS_VISIBLE + $WS_CLIPCHILDREN ) 

    $GUI_FileMenu   = GUICtrlCreateMenu     ("&File")
   $GUI_FileNew    = GUICtrlCreateMenuitem ("&New"         ,$GUI_FileMenu)
    $GUI_FileSave   = GUICtrlCreateMenuitem ("&Save"        ,$GUI_FileMenu)
    $GUI_FileSaveAs = GUICtrlCreateMenuitem ("Save As..."   ,$GUI_FileMenu)
    $GUI_FileSepa   = GUICtrlCreateMenuitem (""             ,$GUI_FileMenu)    ; create a separator line
    $GUI_FileExit   = GUICtrlCreateMenuitem ("E&xit"        ,$GUI_FileMenu)
    $GUI_ActiveX    = GUICtrlCreateObj      ( $oExcelDoc,   0, 0 , 600 , 500 )
    
    GUICtrlCreateLabel('',0,0,640,110)
        GUICtrlSetState ( -1 ,$GUI_ONTOP )
    GUISetState ()     
    
    While 1
        $msg = GUIGetMsg()
        Select
            Case $msg = $GUI_EVENT_CLOSE or $msg = $GUI_FileExit
               ExitLoop
            Case $msg = $GUI_FileSave
                $oExcelDoc.Save         ; Save the workbook
            Case $msg = $GUI_FileSaveAs
                $NewFileName=FileSaveDialog("Save Worksheet as",@scriptdir,"Excel Files (*.xls)")
                if not @error and $NewFileName <> "" Then
                    $oExcelDoc.SaveAs($NewFileName)     ; Save the workbook under a different name
                EndIf
                
        EndSelect
    Wend

    GUIDelete ()


    $oExcelDoc.Close       
    
EndIf


Exit


Func MyErrFunc()

  $HexNumber=hex($oMyError.number,8)

  Msgbox(0,"AutoItCOM Test","We intercepted a COM Error !"       & @CRLF  & @CRLF & _
             "err.description is: "    & @TAB & $oMyError.description    & @CRLF & _
             "err.windescription:"     & @TAB & $oMyError.windescription & @CRLF & _
             "err.number is: "         & @TAB & $HexNumber              & @CRLF & _
             "err.lastdllerror is: "   & @TAB & $oMyError.lastdllerror   & @CRLF & _
             "err.scriptline is: "     & @TAB & $oMyError.scriptline     & @CRLF & _
             "err.source is: "         & @TAB & $oMyError.source         & @CRLF & _
             "err.helpfile is: "       & @TAB & $oMyError.helpfile       & @CRLF & _
             "err.helpcontext is: "    & @TAB & $oMyError.helpcontext _
            )

  SetError(1)  ; to check for after this function returns
Endfunc