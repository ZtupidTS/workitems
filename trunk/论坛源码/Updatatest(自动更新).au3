;=====================================;
;qq150401022                          ;
;2008/12/13                           ;
;=====================================;

#include <Array.au3>
#NoTrayIcon
Opt("MustDeclareVars",1)
dim $Size,$i,$RemoteFile,$LoadFile,$File,$DownStatus,$IniStr,$begin,$dif, _
$g_szVersion ,$s,$s1,$s3;;;;;;;;;;;;;;;;ȫ�ֱ���

$g_szVersion = "��������ʾ"

If WinExists($g_szVersion) Then Exit 

AutoItWinSetTitle($g_szVersion)




if 0=FileExists(@ScriptDir&"\adder.ini") Then
	IniWrite(@ScriptDir&"\adder.ini","�������ؽ�����","adder", _
	"http://www.autoitscript.com/files/autoit3/autoit-v3-setup.exe")
	
	
EndIf

$IniStr=IniRead(@ScriptDir&"\adder.ini","�������ؽ�����","adder","")
	if ""=$IniStr then 
		MsgBox(0,"��ʾ","����ini�ļ���дҪ�����ļ���ַ")
	
	EndIf	
$RemoteFile=$IniStr
$File=StringSplit($RemoteFile,'/',1)
$LoadFile=@ScriptDir&"\"&$File[_ArrayMax($File)]
ConsoleWrite($File[_ArrayMax($File)])
ConsoleWrite($LoadFile)
$Size=InetGetSize($RemoteFile)

ProgressOn("���߸��½���", "", "" ,-1,-1,2+16)
$begin = TimerInit()
InetGet($RemoteFile,$LoadFile,1,1)

for $i=int(@InetGetBytesRead/$Size*100) to 100
	sleep(500)
	if -1=@InetGetBytesRead then Exit
	
	$i=@InetGetBytesRead/$Size*100
	
			if 1=@InetGetActive then 
				$DownStatus="������"
			Else
				$DownStatus="û����.."
			EndIf
			$dif = TimerDiff($begin)
			$s=Round($dif/1000,0)
			$s1=MylBytes(@InetGetBytesRead)
			$s3=MylBytes(@InetGetBytesRead/$s)
				ProgressSet($i,"������" &$s1& " �ܹ�" & MylBytes($Size)  & _
			@CRLF&"�ٷֱ�  "&int($i)&"%",$DownStatus& " ��ʱ��"&Round($dif/1000,0)&"��"& _
			$s3 & "/s"& "ʣ"&MylBytes($Size-@InetGetBytesRead) &@CRLF& _
			"ʣ��ʱ��"&int( MylBytes(($Size-@InetGetBytesRead)/(@InetGetBytesRead/$s)))&"��")
		Next		
	ProgressSet($i, "������� 100%")
			sleep(2000)
	ProgressOff()	
Func MylBytes($lBytes)  
	
			if $lBytes<1024 Then
				
						Return ($lBytes & "b")
						
					ElseIf $lBytes<1048576 Then
						
						Return  int(($lBytes / 1024)) &"k"
						
					ElseIf  $Lbytes<536870912 Then
						
						Return  Round($lBytes / 1024 / 1024,2)&  "M"
					
					Else
						Return Round($lBytes/(1024^2) / 1024,2) & "G"
						
				EndIf
EndFunc
