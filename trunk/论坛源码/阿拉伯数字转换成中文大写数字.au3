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
Dim $numb = InputBox("", "")
$go = NUM2CWORD($numb)
$go1 = NUM2CWORD($numb, 1)
MsgBox(0, 0, "ԭʼ����:" & $numb & @CRLF & "���Ĵ�д��" & $go & @CRLF & "���Ĺ�д��" & $go1)

Func NUM2CWORD($number, $vValue = "")
        If Not IsNumber(Execute($number)) Then Return SetError(1, 0, "");�������Ĳ������ַ��ش������1
        If $number > 999999999999 Then Return SetError(2, 0, "");�������ǧ�ڷ��ش������2
        If $vValue < 0 Or $vValue = "" Then $vValue = 0
        If $vValue = 1 Then
                Dim $Cnum[10] = ["��", "Ҽ", "��", "��", "��", "��", "½", "��", "��", "��"]
                Dim $Cwei[12] = ["", "ʰ", "��", "Ǫ", "��", "ʰ��", "����", "Ǫ��", "��", "ʰ��", "����", "Ǫ��"]
        Else
                Dim $Cnum[10] = ["��", "һ", "��", "��", "��", "��", "��", "��", "��", "��"]
                Dim $Cwei[12] = ["", "ʮ", "��", "ǧ", "��", "ʮ��", "����", "ǧ��", "��", "ʮ��", "����", "ǧ��"]
        EndIf
        Local $str, $xiao
        If StringRegExp($number, '\d+\.\d+', 0) Then;�ж��Ƿ���С��
                $number_temp = StringRegExp($number, '(\d+)\.(\d+)', 3)
                $number = $number_temp[0]
                $number_xiao = $number_temp[1]
                $number_xiao_wei = StringLen($number_xiao)
        Else
                $number_xiao_wei = 0
        EndIf
        $number_wei = StringLen($number)
        If $number_xiao_wei > 0 Then;����С������
                For $x = 1 To $number_xiao_wei
                        $xiao &= $Cnum[StringMid($number_xiao, $x, 1)]
                Next
        EndIf
        $n = $number_wei
        For $i = 1 To $number_wei;������������
                If StringMid($number, $i, 1) = 0 Then
                        If StringMid($number, $i - 1, 1) = 0 Then
                                $n -= 1
                        Else
                                $str &= $Cnum[0]
                                $n -= 1
                        EndIf
                Else
                        $str &= $Cnum[StringMid($number, $i, 1)] & $Cwei[$n - 1]
                        $n -= 1
                EndIf
        Next
        $wan = StringRegExp($str, '��', 3)
        $yi = StringRegExp($str, '��', 3)
        If UBound($wan) > 1 Then $str = StringReplace($str, "��", "", UBound($wan) - 1)

        If UBound($yi) > 1 Then $str = StringReplace($str, "��", "", UBound($yi) - 1)
        If StringRight($str, 1) = "��" Then $str = StringMid($str, 1, StringLen($str) - 1)
        If StringLen($xiao) > 0 Then
                If StringLen($str) > 0 Then
                        $str = $str & "��" & $xiao
                Else
                        $str = "���" & $xiao
                EndIf
        EndIf
        Return $str
EndFunc   ;==>NUM2CWORD