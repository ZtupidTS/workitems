#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_Icon=L:\����\�ۺ����\3D���ICOͼ��\mc.ico
#AutoIt3Wrapper_Outfile=C:\Users\chtyfox\Desktop\@PShsot����.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Green
#AutoIt3Wrapper_Res_Description=Green
#AutoIt3Wrapper_Res_Fileversion=1.0.0.1
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=p
#AutoIt3Wrapper_Res_LegalCopyright=www.lite6.com
#EndRegion ;**** ���������� ACNWrapper_GUI ****
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


FileSetAttrib ( "C:\Windows\system32\drivers\etc\hosts", "-RH" ) 
FileMove("C:\Windows\system32\drivers\etc\hosts","C:\Windows\system32\drivers\etc\hosts.txt",9)
Local $file = FileOpen("C:\Windows\system32\drivers\etc\hosts.txt", 1)
FileWrite($file,"127.0.0.1  practivate.adobe.com" & @CRLF)
FileMove("C:\Windows\system32\drivers\etc\hosts.txt","C:\Windows\system32\drivers\etc\hosts",9)
FileClose($file)
FileSetAttrib ( "C:\Windows\system32\drivers\etc\hosts", "+RH" ) 
MsgBox(0,"��ʾ","�ƽ�ɹ�")