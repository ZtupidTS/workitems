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

#include <array.au3>
Local $fp = FileOpen( @ScriptDir & "\2.txt", 0)
Local $buf = FileRead($fp)
FileClose($fp)
 
Local $arr1 = StringSplit($buf, @CRLF)
;_ArrayDisplay($arr1, "�����հ���")
Local $i
For $i = $arr1[0] To 1 Step -1
        If StringLen($arr1[$i]) = 0 Then
                _ArrayDelete($arr1,$i)
                $arr1[0] -= 1
        EndIf
Next
_ArrayDisplay($arr1, "�޳��հ���--����ǰ")
 
Local $arr2[$arr1[0]+1][2]
$arr2[0][0] = $arr1[0]
For $i = 1 To $arr2[0][0]
        $arr2[$i][0] = $arr1[$i]
        $arr2[$i][1] = StringMid($arr2[$i][0],StringInStr($arr2[$i][0],"TM"))
Next
;_ArrayDisplay($arr2, "@�����������")
 
Local $arr3[$arr1[0]+1]
$arr3[0] = 0
Local $j
Local $k
$arr3[1] = $arr2[1][1]
$arr3[0] = 1
$i = 2
For $j = 2 To $arr2[0][0]
        For $k = 1 To $j-1
                If StringCompare($arr2[$j][1], $arr2[$k][1]) = 0 Then ExitLoop
        Next
        If $k = $j Then
                $arr3[$i] = $arr2[$j][1]
                $arr3[0] += 1
                $i += 1
        EndIf
Next
For $i = $arr2[0][0] To $arr3[0]+1 Step -1
        _ArrayDelete($arr3, $i)
Next
;_ArrayDisplay($arr3, "@����������ظ�")
 
$k = 1
For $i = 1 To $arr3[0]
        For $j = 1 To $arr2[0][0]
                If StringCompare($arr2[$j][1],$arr3[$i]) = 0 Then
                        $arr1[$k] = $arr2[$j][0]
                        $k += 1
                EndIf
        Next
Next
 
_ArrayDisplay($arr1, "���ս��--�����")