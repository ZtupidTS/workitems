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

;~ #Include <WinAPIEx.au3>
;~ $1= _WinAPI_GetFileTitle ( @ScriptDir )
;~ MsgBox(1,"1",$1)
#include <File.au3>
#include <Array.au3>
Dim $Dir
; ***********************************************************
; *��ȡĿ¼���ļ���ϸ�ļ�(������·������)�ĺ�����������Ŀ¼���ļ�
; *����Ϊ������·����Ŀ¼��
; *���Ϊһ�����飬$List[0]=Ŀ¼���ļ�������$List[1...N]Ϊ������·����
; *�ļ��б�
; ************************************************************
$testdir=@ScriptDir
$testlist=FileListToArray($testdir)
If IsArray($testlist) Then
For $i=1 To UBound($testlist)-1
MsgBox(0,"�ļ��б�",$testlist[$i],1)
Next    
EndIf
Func FileListToArray($Dir)
    Dim $FilePath,$FilesList,$List[1]=[0],$Files,$i
    $FilesList=_FileListToArray($Dir)
    If (Not IsArray($FilesList)) and (@Error=1) Then
          MsgBox (0,"","No Files\Folders Found.")
          Return
    EndIf
    $Files=_FileListToArray($Dir,"*",1)
    If IsArray($Files) Then
          For $i=1 To $Files[0]
                $FilePath=$Dir&"\"&$Files[$i]
                ReDim $List[UBound($List)+1]
                $List[0]=$List[0]+1
                $List[UBound($List)-1]=$FilePath
          Next
    EndIf
    $SubDir=_FileListToArray($Dir,"*",2)
    If IsArray($SubDir) Then
          For $i=1 To $SubDir[0]
                $FullPath=$Dir&"\"&$SubDir[$i]
                $tempList=FileListToArray($FullPath)
                For $i=1 To $tempList[0]
                      ReDim $List[UBound($List)+1]
                      $List[0]=$List[0]+1
                      $List[UBound($List)-1]=$tempList[$i]
                Next  
          Next
    EndIf
    Return $List
EndFunc