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
#cs

���Ҳ֪����ExitLoop������ֹ While �� Do �� For ѭ��.
ExitLoop�Ƿǳ����õĺ���������һ��ʹ��ExitLoop�����ò���.

�����ĵ���Ҳû����ϸ˵��������ܶ����Ѷ���֪����������Ǹ�ʲô��.
�������������ҽ���һ�£�������¼.

ExitLoop
--------------------------------------------------------------------------------

��ֹ While �� Do �� For ѭ��.

ExitLoop [�ȼ�]
        
[�ȼ�]
        0 = �������κ�Ч��.
        1 = Ĭ��Ϊ 1(��ʾ��ǰѭ��).
        2���� = �˳����ѭ��.


����ȼ���ʹ�ö��ѭ��ʱ��ǳ����ã���������м�����ʱ�����˳����ѭ��.
#ce
;���ӣ�
For $s = 0 To 99; ��һ��ѭ��

        For $i = 0 To 99; �ڶ���ѭ��

                $file = FileOpen('lixiaolong') ;ָ�������ڵ��ļ�����.

               

;~              If $file = -1 Then ExitLoop ;�˳���ǰѭ�����൱�� ExitLoop 1������ʵ�е�һ��ѭ��.

                If $file = -1 Then ExitLoop 2 ;�˳�2��ѭ��������ʵ�е�һ��ѭ��.

        Next

        MsgBox(0, '', '���For $i û�г���ʵ�����')

Next

 

If $s <> 100 Then MsgBox(0,0,'��������')

Exit




;����2 �뿴ConsoleWrite�����ѭ��������
$a = 0

 

While 1

        ConsoleWrite('Loop 1' & @CRLF)

        While 2

                ConsoleWrite('Loop 2' & @CRLF)

                While 3

                        ConsoleWrite('Loop 3' & @CRLF)

                        While 4

                                $a += 1

                                ConsoleWrite('Loop 4' & @CRLF)

                                If $a = 5 Then

                                        MsgBox(0, 0, 'ExitLoop 0')

                                        ConsoleWrite('===ExitLoop 0===' & @CRLF)

                                        ExitLoop 0 ;û���κ�Ч��

                                ElseIf $a = 10 Then

                                        MsgBox(0, 0, 'ExitLoop 1')

                                        ConsoleWrite('===ExitLoop 1===' & @CRLF)

                                        ExitLoop 1 ; �˳�While 4

                                ElseIf $a = 30 Then

                                        MsgBox(0, 0, 'ExitLoop 2')

                                        ConsoleWrite('===ExitLoop 2===' & @CRLF)

                                        ExitLoop 2 ; �˳�While 3��While 4

                                ElseIf $a = 50 Then

                                        MsgBox(0, 0, 'ExitLoop 3')

                                        ConsoleWrite('===ExitLoop 3===' & @CRLF)

                                        ExitLoop 3 ; �˳�While 2��While 3��While 4

                                ElseIf $a = 70 Then

                                        MsgBox(0, 0, 'ExitLoop 4')

                                        ConsoleWrite('===ExitLoop 4===' & @CRLF)

                                        ExitLoop 4 ; �˳�While 1��While 2��While 3��While 4

                                EndIf

                        WEnd

                WEnd

        WEnd

WEnd

 

MsgBox(0, 0, '�˳�������ѭ��')




;ContinueLoop ��ѭ���ȼ�Ҳһ��.
For $i = 0 To 100

        MsgBox(0,$i,'���ǵ�һ��ѭ��')

        For $s = 1 To 10

                If $s = 7 Then ContinueLoop 2

                MsgBox(0, "$i �ĵ�ǰֵΪ: ", $i)

        Next

Next

Exit

