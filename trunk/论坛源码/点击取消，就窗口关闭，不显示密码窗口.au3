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

Dim $a, $b
Do
        $a = InputBox ("��¼����", "�������û���", "", "")
		If @error =1 Then Exit
        $b = InputBox ("����", "������������.", "", "*")
        If @error =1 Then Exit
        If $a = "" Then
                MsgBox(0 + 16 + 4096 + 262144, "������Ϣ", "������û�������Ϊ��")
        ElseIf $a <> "admin" Then
                MsgBox(0 + 16 + 4096 + 262144, '������Ϣ', '�û�������ȷ������������')
        Else
                If $b = "" Then
                        MsgBox(0 + 16 + 4096 + 262144, "������Ϣ", "��������벻��Ϊ��")
                ElseIf $b <> "123" Then
                        MsgBox(0 + 16 + 4096 + 262144, '������Ϣ', '���벻��ȷ������������')
                Else
                        MsgBox(64, "��ϲ", "�ɹ�")
                EndIf
        EndIf
Until $a = "admin" And $b = "123"
