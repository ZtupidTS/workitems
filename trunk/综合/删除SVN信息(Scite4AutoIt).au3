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

Dim $h=MsgBox(1, "��ע��", "ȷ��Ҫɾ��SVN��Ϣ,�Ƿ��ڸ��������б����򣬲��ǵ�ȡ�����븴�Ƴɸ�����������")
    if  $h<>1  Then
    Exit 0
EndIf 

DirRemove(@ScriptDir & "\.svn",1)
DirRemove(@ScriptDir & "\Project\.svn",1)
DirRemove(@ScriptDir & "\roject\Bins\.svn",1)
DirRemove(@ScriptDir & "\Project\Properties\.svn",1)
DirRemove(@ScriptDir & "\scintilla\.svn",1)
DirRemove(@ScriptDir & "\scintilla\bin\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\res\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaFramework\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaFramework\English.lproj\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaFramework\ScintillaFramework.xcodeproj\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaTest\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaTest\English.lproj\.svn",1)
DirRemove(@ScriptDir & "\scintilla\cocoa\ScintillaTest\ScintillaTest.xcodeproj\.svn",1)
DirRemove(@ScriptDir & "\scintilla\doc\.svn",1)
DirRemove(@ScriptDir & "\scintilla\gtk\.svn",1)
DirRemove(@ScriptDir & "\scintilla\include\.svn",1)
DirRemove(@ScriptDir & "\scintilla\lexers\.svn",1)
DirRemove(@ScriptDir & "\scintilla\lexlib\.svn",1)
DirRemove(@ScriptDir & "\scintilla\macosx\.svn",1)
DirRemove(@ScriptDir & "\scintilla\macosx\SciTest\.svn",1)
DirRemove(@ScriptDir & "\scintilla\macosx\SciTest\English.lproj\.svn",1)
DirRemove(@ScriptDir & "\scintilla\macosx\SciTest\SciTest.xcode\.svn",1)
DirRemove(@ScriptDir & "\scintilla\src\.svn",1)
DirRemove(@ScriptDir & "\scintilla\test\.svn",1)
DirRemove(@ScriptDir & "\scintilla\test\examples\.svn",1)
DirRemove(@ScriptDir & "\scintilla\test\unit\.svn",1)
DirRemove(@ScriptDir & "\scintilla\win32\.svn",1)
DirRemove(@ScriptDir & "\scite\.svn",1)
DirRemove(@ScriptDir & "\scite\bin\.svn",1)
DirRemove(@ScriptDir & "\scite\bin\properties\.svn",1)
DirRemove(@ScriptDir & "\scite\bin\�����ļ�\.svn",1)
DirRemove(@ScriptDir & "\scite\boundscheck\.svn",1)
DirRemove(@ScriptDir & "\scite\doc\.svn",1)
DirRemove(@ScriptDir & "\scite\gtk\.svn",1)
DirRemove(@ScriptDir & "\scite\lua\.svn",1)
DirRemove(@ScriptDir & "\scite\lua\include\.svn",1)
DirRemove(@ScriptDir & "\scite\lua\src\.svn",1)
DirRemove(@ScriptDir & "\scite\lua\src\lib\.svn",1)
DirRemove(@ScriptDir & "\scite\scripts\.svn",1)
DirRemove(@ScriptDir & "\scite\src\.svn",1)
DirRemove(@ScriptDir & "\scite\toolbar\.svn",1)
DirRemove(@ScriptDir & "\scite\toolbar\bmp2ico\.svn",1)
DirRemove(@ScriptDir & "\scite\toolbar\ico\.svn",1)
DirRemove(@ScriptDir & "\scite\win32\.svn",1)
