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

Local $IPADD1='192.168.1.1',$IP1LostPackageCount=0  ;����Ŀ��IP�Ͷ���������
Local $IPADD2='192.168.1.2',$IP2LostPackageCount=0
 
For $i=1 To 50
        $temp1=Ping($IPADD1,250)  ;���ó�ʱʱ�䣬�������ʵ�����������á�
        If $temp1=0 Then $IP1LostPackageCount+=1  ;������ص���0����֤�������ˡ��򶪰���+1
        $temp2=Ping($IPADD2,250)
        If $temp2=0 Then $IP2LostPackageCount+=1
        If $temp1<>0 And $temp2<>0 Then
                TrayTip("���ڷ��͵�"&$i&"������","��һ�����ͳɹ� "&@CRLF&"�ڶ������ͳɹ� ",1)  ;��ʾ��ǰ�ǵڼ�����״̬
        ElseIf $temp1=0 And $temp2<>0  Then
                TrayTip("���ڷ��͵�"&$i&"������","��һ������ʧ�� "&@CRLF&"�ڶ������ͳɹ� ",1)  ;��ʾ��ǰ�ǵڼ�����״̬
        ElseIf $temp1<>0 And $temp2=0  Then
                TrayTip("���ڷ��͵�"&$i&"������","��һ�����ͳɹ� "&@CRLF&"�ڶ�������ʧ�� ",1)  ;��ʾ��ǰ�ǵڼ�����״̬
        Else
                TrayTip("���ڷ��͵�"&$i&"������","��һ������ʧ�� "&@CRLF&"�ڶ�������ʧ�� ",1)  ;��ʾ��ǰ�ǵڼ�����״̬
        EndIf
        
Next
 
MsgBox(0,"����","��һ��IP������:"&$IP1LostPackageCount&@CRLF&"�ڶ���IP������:"&$IP2LostPackageCount)