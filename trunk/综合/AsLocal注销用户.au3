#Region ACNԤ����������(��������)
;** ע���в���Ҫ��ɾ��������һЩ������Ϣ�����ᵽ���յ�EXE��.
;===============================================================================================================
;** AUTOIT3 ����
#PRE_UseX64=                         ;(Y/N) ʹ�� X64 �汾�� AutoIt3_x64/AUT2EXE_x64. Ĭ��=N
#PRE_Run_Debug_Mode=                 ;(Y/N) ���нű��ڿ���ͼ����. Ĭ��=N
#PRE_Run_SciTE_Minimized=            ;(Y/N) ���ű�����ʱ��С�� SciTE ����. Ĭ��=n
#PRE_Run_SciTE_OutputPane_Minimized= ;(Y/N) ����ʱ�ر� SciTE �������. Ĭ��=n
;===============================================================================================================
;** AUT2EXE ����
#PRE_Icon=                           ;��Ҫʹ�õ�ͼ��(·��)����,֧��EXE,DLL,ICO
#PRE_OutFile=                        ;Ŀ�� exe/a3x �ļ���.
#PRE_OutFile_Type=exe                ;a3x=С�� AutoIt3 �ļ�; exe=��׼��ִ���ļ�(Ĭ��)
#PRE_Compression=                    ;ѹ������ 0-4 ?=�� 2=�� 4=�� Ĭ��=2
#PRE_UseUpx=                         ;(Y/N) ѹ������ĳ���.  Ĭ��=Y
#PRE_UPX_Parameters=                 ;����Ĭ��UPX����.
#PRE_Change2CUI=                     ;(Y/N) �޸�����ĳ���ΪCUI(����̨����). Ĭ��=N
;===============================================================================================================
;** Ŀ�������Դ��Ϣ
#PRE_Res_Comment=                    ;ע��
#PRE_Res_Description=                ;��ϸ��Ϣ
#PRE_Res_Fileversion=                ;�ļ��汾
#PRE_Res_FileVersion_AutoIncrement=  ;(Y/N/P)�Զ����°汾  . Ĭ��=N P=��ʾ
#PRE_Res_ProductVersion=             ;Product Version. Default is the AutoIt3 version used.
#PRE_Res_Language=                   ;��Դ���Դ���. �ٷ�Ĭ�� 2057=Ӣ�� (Ӣ��),ACN�汾Ĭ�� 2052=��������(�й�)
#PRE_Res_LegalCopyright=             ;��Ȩ
#PRE_res_requestedExecutionLevel=    ;None, asInvoker, highestAvailable or requireAdministrator   (Ĭ��=None)
#PRE_res_Compatibility=    		;Vista,Windows7 . Both alloweed seperated by a comma     (default=None)
#PRE_Res_SaveSource=                 ;(Y/N) ����Դ���뱸�ݵ�EXE��Դ��. Ĭ��=N

#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

 Au3 �汾: 
 �ű�����: 
 �����ʼ�: 
	QQ/TM: 
 �ű��汾: 
 �ű�����: 

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

ProcessClose ("NDSvr.exe") 
ProcessClose ("explorer.exe") 
Sleep(1000)
Run(@ComSpec & " /k explorer")
ProcessClose("cmd.exe")
