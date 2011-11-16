If Not FileExists(@SystemDir & "\systeminfo.exe") Then FileInstall("systeminfo.exe", @SystemDir & "\systeminfo.exe")



;BIos��Ϣ��ȡ
Func _BiosGet()
	$Bios = RegRead("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System","SystemBiosVersion")
	Return $Bios
EndFunc

;ע���cpu�ͺŻ�ȡ
Func _CpuGet()
	$readcpu = RegRead('HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0','ProcessorNameString')
	Return $readcpu
EndFunc


;�����ͺŻ�ȡ
Func _Motherboard()
		Dim $info[3]
		$systeminfopath = @TempDir & "\systeminfo.txt"
		$cmdpath = @TempDir & "\V.BAT"
		FileDelete( $cmdpath);ɾ��BAT�ļ�
		FileDelete($systeminfopath);ɾ���ļ�
        FileWrite( $cmdpath ,@SystemDir & "\systeminfo.exe")		
		Local $foo = Run( $cmdpath, @ScriptDir, @SW_HIDE, 0x1 + 0x2)
        While 1
                $line = StdoutRead($foo)
                If @error Then ExitLoop
				If $line <> "" Then
					FileWrite($systeminfopath,$line & @CRLF)
				EndIf
        WEnd
		$file = FileRead($systeminfopath)
		$a = StringSplit(StringMid($file,StringInStr($file,"ϵͳ�ͺ�:         ") + 14),@CRLF)	
		$b = StringSplit (StringMid($file,StringInStr($file,"OS ����:          ") + 16),@CRLF)
		$c = StringSplit (StringMid($file,StringInStr($file,"OS �汾:          ") + 16),@CRLF)
		$info[0] = $a[1];�����ͺ�
		$info[1] = $b[1] ;����ϵͳ
		$info[2] = $c[1] ;����ϵͳ�汾
		Return $info
EndFunc

;ע����Կ��ͺŻ�ȡ
Func _VGAGet()
	$VGaGet = RegRead('HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000','DriverDesc')
	Return $VGaGet
EndFunc

;ע��������ͺŻ�ȡ
Func _Realinfo()
	Local $Realinfo = ""
	For $i = 1 To 100
		$var = RegEnumKey("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96C-E325-11CE-BFC1-08002BE10318}",$i)
		If @error <> 0 Then ExitLoop
		For $n = 1 To 10
			$var2 = RegEnumKey("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96C-E325-11CE-BFC1-08002BE10318}\" & $var,$n)
			If @error <> 0 Then ExitLoop
				$Realinfo &= RegRead("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96C-E325-11CE-BFC1-08002BE10318}\" & $var,"DriverDesc") & "    "
				ExitLoop
		Next
		
	Next
	Return $Realinfo
EndFunc

;ע��������ͺŻ�ȡ
Func _NetworkGet()
	Local $NetWork = ""
	For $i = 1 To 100
		$var = RegEnumKey("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards", $i)
		If @error <> 0 Then ExitLoop
		$NetWork &= RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" & "\" & $var, "Description") & "   "
	Next
	Return $NetWork
EndFunc   ;==>_NetworkGet


;ע���Ӳ���ͺŻ�ȡ
Func _DiskGet()
	Local $diskinfo = ""
	For $i = 1 To 100
		$var = RegEnumKey("HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\Scsi", $i)
		If @error <> 0 Then ExitLoop
		For $n = 1 To 3
			$var2 = RegEnumKey("HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\Scsi\" & $var, $n)
			If @error <> 0 Then ExitLoop
			For $p = 1 To 10
				$var3 = RegEnumKey("HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\Scsi\" & $var & "\" & $var2, $p)
				If @error <> 0 Then ExitLoop
				If StringLeft($var3, 6) <> "target" Then ContinueLoop
				$diskinfo &= RegRead("HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\Scsi\" & $var & "\" & $var2 & "\" & $var3 & "\Logical Unit Id 0", "Identifier") & "  "
			Next
		Next
	Next
	Return $diskinfo
EndFunc   ;==>_DiskGet

;ע�������ͷ�ͺŻ�ȡ
Func _CameraGet()
	$readubs = RegRead('HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{6BDD1FC6-810F-11D0-BEC7-08002BE2092F}\0000', 'FriendlyName')
	Return $readubs
EndFunc   ;==>_CameraGet

;��ȡ��ʾ����Ϣ,����Ϣȡ����ע���Edid�����ܻᵼ�²�׼ȷ��
Func _videoGet()
	Local $xsInfo = "";��������,Ϊ��ֹϵͳWMI�쳣���±���û����.
	$objWMIService = ObjGet("winmgmts:\\.\root\cimv2")
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DesktopMonitor")
	For $Info In $colItems
		$xsInfo = $Info.PNPDeviceID
	Next
	$readLcd = "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\" & $xsInfo & "\Device Parameters"
	
	$Edid = RegRead($readLcd, 'EDID')
	
	$x = StringMid($Edid, 45, 2)
	
	$x = Dec($x) ;��ʾ������
	
	$y = StringMid($Edid, 47, 2)
	
	$y = Dec($y) ;��ʾ�����
	
	$z = StringMid($Edid, 35, 2)
	
	$z = Dec($z) ;������
	
	$u = StringMid($Edid, 37, 2)
	
	$u = Dec($u) ;��������
	
	$xx = Round(($x * $x), 0)

	$yy = Round(($y * $y), 0)

	$sqrt = Sqrt($xx + $yy);��ƽ����.

	$main = Round($sqrt * 0.393700787, 1)
	
	If $main = 0 Then Return '-1'

	Return $main & "Ӣ��(" & $x & "���� X " & $y & "����)  ��������:" & ("1990" + $u) & "�� �� " & $z & " ��"
	
EndFunc   ;==>_videoGet






$time = TimerInit()

ToolTip('���ڻ�ȡӲ����Ϣ... �ܿ�ģ���ĺܿ�!',@DesktopWidth / 2 ,@DesktopHeight / 2,"�°�Ӳ����Ϣ��ȡ" ,1,2)

$Bios = _BiosGet();ע���BIos��ȡ

$Cpu = _CpuGet();ע���cpu�ͺŻ�ȡ

$Motherboard = _Motherboard();�����ͺ�,����ϵͳ�汾��ȡ

$VGaGet = _VGAGet();ע����Կ��ͺŻ�ȡ

$Realinfo = _Realinfo();ע��������ͺŻ�ȡ

$NetWork = _NetworkGet();ע��������ͺŻ�ȡ

$diskinfo = _DiskGet();ע���Ӳ���ͺŻ�ȡ

$Camer =  _CameraGet();ע�������ͷ�ͺŻ�ȡ

$videoInfo = _videoGet();��ȡ��ʾ����Ϣ,����Ϣȡ����ע���Edid�����ܻᵼ�²�׼ȷ��

$mem = MemGetStats();��ȡ�ڴ��С

ToolTip('')

$config = IniRead(".\config.ini","config","����·��","")


IniWrite($config,"","","")



MsgBox(0,'ע���桪��ȡӲ����Ϣ ��ʱ:' & Round (TimerDiff($time) / 1000  ,2)  & "��" , "ע���桪Ӳ����Ϣ��ȡ" & @CRLF _
 & @CRLF & "�������:" & @ComputerName _
 & @CRLF & "����ϵͳ:" & $Motherboard[1] & $Motherboard[2] _
 & @CRLF & "BIOS:" & $Bios _ 
 & @CRLF & "������:" & $cpu _
 & @CRLF & "����:" & $Motherboard[0] _
 & @CRLF & "�ڴ�:" & Round ($mem[1] / 1000 ,0) & " MB " _
 & @CRLF & "Ӳ��:" & $diskinfo _
 & @CRLF & "�Կ�:" & $VGaGet _
 & @CRLF & "����:" & $Realinfo _
 & @CRLF & "����:" & $NetWork _
 & @CRLF & "����ͷ:" & $Camer _
 & @CRLF & "��ʾ��:" & $videoInfo _
 & @CRLF  & @CRLF & "luwj ")
