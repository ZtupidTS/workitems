#region ACNԤ����������(���ò���)
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
#endregion ACNԤ����������(���ò���)
#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
	
	Au3 �汾:
	�ű�����:
	�����ʼ�:
	QQ/TM:
	�ű��汾:
	�ű�����:
	
#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�
#include <array.au3>
#include <file.au3>
Local $aA, $aB
_FileReadToArray('2.txt', $aA)
$aB = _ArrayFindAll($aA, 'Mobile', 0, 0, 0, 1)

$file = FileOpen('3.txt', 2)
For $i = 0 To UBound($aB) - 1
	FileWrite('3.txt', $aA[$aB[$i]] & @CRLF)
Next
_ReplaceStringInFile('3.txt','"','')

FileClose($file)



;ɾ�������������ַ���
;~ Local $aA, $aB
;~ _FileReadToArray('2.txt', $aA)
;~ $aB = _ArrayFindAll($aA, 'Linux', 0, 0, 0, 1)

;~  $file = FileOpen('1.txt', 2)
;~ For $i = 0 To UBound($aA) - 1
;~ 	If _ArraySearch($aB, $i) = -1 Then 
;~ 	FileWrite('1.txt', $aA[$i] & @CRLF)
;~  EndIf
;~ Next

;~ _ReplaceStringInFile('1.txt','"','')



;~ FileClose($file)
;~ FileDelete(@ScriptDir & "\2.txt")
;~ FileMove(@ScriptDir & "\1.txt",@ScriptDir & "\2.txt")

