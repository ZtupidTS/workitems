; ���¥����.au3"
;Content-Length: 6120

#region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=C:\WINDOWS\system32\SHELL32.dll|-44
#AutoIt3Wrapper_Res_Comment=sdfsdf
#AutoIt3Wrapper_Res_Description=sdfdfg
#AutoIt3Wrapper_Res_Fileversion=14
#AutoIt3Wrapper_Res_LegalCopyright=dfgdfg
#endregion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include <Date.au3>
$fid = 0
$tid = 0
$code = 0
#region ### START Koda GUI section ### Form=
$Form1 = GUICreate("ĳ��̳��¥", 441, 292, 192, 124)
$Label1 = GUICtrlCreateLabel("����ID", 16, 16, 52, 17)
$Input1 = GUICtrlCreateInput("", 72, 8, 121, 21)
$Label2 = GUICtrlCreateLabel("�н�¥��", 16, 56, 52, 17)
$Input2 = GUICtrlCreateInput("88,888,1888", 72, 48, 121, 21)
$Label3 = GUICtrlCreateLabel("��������", 16, 96, 52, 17)
$Input3 = GUICtrlCreateInput("2", 72, 88, 121, 21)
$Label4 = GUICtrlCreateLabel("��������", 16, 128, 52, 17)
$Edit1 = GUICtrlCreateEdit("", 72, 128, 161, 89)
GUICtrlSetData(-1, "")
$Edit2 = GUICtrlCreateEdit("", 240, 32, 185, 185)

_GUICtrlEdit_InsertText($Edit2, "׼����ʼ")
$Label5 = GUICtrlCreateLabel("״̬", 240, 8, 70, 17)
$Button1 = GUICtrlCreateButton("ֹͣ", 264, 256, 75, 25)
$Button2 = GUICtrlCreateButton("��ʼ", 352, 256, 75, 25)
$Label6 = GUICtrlCreateLabel(_NowTime(), 16, 264, 50, 17)
$Label7 = GUICtrlCreateLabel("��������", 72, 264, 52, 17)
$Label8 = GUICtrlCreateLabel("0", 128, 264, 40, 17)
GUICtrlSetColor(-1, 0xFF0000)
$Label10 = GUICtrlCreateLabel("ˢ��ʱ��", 16, 240, 52, 17)
$Input3a = GUICtrlCreateInput("1000", 72, 232, 121, 21)

GUISetState(@SW_SHOW)
#endregion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button2
			If GUICtrlRead($Edit1) <> "" And GUICtrlRead($Input1) <> "" Then
				_GUICtrlEdit_InsertText($Edit2, @CRLF & "��ʼ...")
				AdlibRegister("suaxtime", 1000)
				AdlibRegister("main", GUICtrlRead($Input3a))
			Else
				_GUICtrlEdit_InsertText($Edit2, @CRLF & "��ѡ��δ��д...")
			EndIf
			
		Case $Button1
			_GUICtrlEdit_InsertText($Edit2, @CRLF & "ֹͣ...")
			AdlibUnRegister("suaxtime")
			AdlibUnRegister("main")
	EndSwitch
WEnd

Func suaxtime()
	GUICtrlSetData($Label6, _NowTime())
EndFunc   ;==>suaxtime
Func main()
	getinfo(GUICtrlRead($Input1))
EndFunc   ;==>main


Func getinfo($tid)
	GUICtrlSetData($Label5, "����������")
	$fid = 0
	$oHTTP = ObjCreate("MSXML2.XMLHTTP") ;���»�ȡHASHֵ
	$oHTTP.Open("get", "http://www.luzhouso.com/forum.php?mod=viewthread&tid=" & $tid & "&RAN=" & Random(), False)
	$oHTTP.setRequestHeader("Cache-Control", "no-cache")
	$oHTTP.setRequestHeader("Accept-Language", "zh-cn")
	$oHTTP.setRequestHeader("Accept-Encoding", "gzip, deflate")
	$oHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	$oHTTP.Send("")
	GUICtrlSetData($Label5, "����������")
	$a = BinaryToString($oHTTP.responsebody)
	If StringInStr($a, '<span class="xg1">�鿴') Then
		$code = StringMid($a, StringInStr($a, '<input type="hidden" name="formhash" value="') + 44, 8)
		$tiesu = StringRegExp($a, '�ظ�:</span> <span class="xi1">(.*?)</span>', 3)
		$tiesu = $tiesu[0] + 1
		GUICtrlSetData($Label8, $tiesu)
		$fid = StringRegExp($a, 'fid=(.*?)">�����б�', 3)
		$fid = $fid[0]
		$zongj = GUICtrlRead($Input2)
		GUICtrlSetData($Label5, "����������")
		If StringInStr($zongj, ",") Then
			$zongjl = StringSplit($zongj, ",")
			For $ii = 1 To $zongjl[0]
				If $zongjl[$ii] - $tiesu <= GUICtrlRead($Input3) And $zongjl[$ii] - $tiesu > 0 Then
					For $ii2 = 1 To GUICtrlRead($Input3)
						_GUICtrlEdit_InsertText($Edit2, @CRLF & _NowTime() & " ��ռ" & $zongjl[$ii] & "¥����" & $ii2 & "")
						huitie($tid)
						Sleep(500)
					Next
					GUICtrlSetData($Label5, "����������")
					ExitLoop
				EndIf
			Next
			
			
		Else
			If $zongj - $tiesu <= GUICtrlRead($Input3) And $zongj - $tiesu > 0 Then
				For $ii2 = 1 To GUICtrlRead($Input3)
					_GUICtrlEdit_InsertText($Edit2, @CRLF & _NowTime() & " ��ռ" & $zongj & "¥����" & $ii2 & "")
					huitie($tid)
					Sleep(500)
				Next
				GUICtrlSetData($Label5, "����������")
			EndIf
		EndIf
		
		
	Else
		_GUICtrlEdit_InsertText($Edit2, @CRLF & "��ȡ���Ӵ��� ��������ID")
		
	EndIf
	GUICtrlSetData($Label5, "����������")
EndFunc   ;==>getinfo
Func huitie($tid)
	$oHTTP = ObjCreate("MSXML2.XMLHTTP") ;��ʼ����
	$oHTTP.Open("post", "http://www.luzhouso.com/forum.php?mod=post&action=reply&fid=" & $fid & "&tid=" & $tid & "&extra=page%3D1&replysubmit=yes&infloat=yes&handlekey=fastpost&inajax=1", False)
	$oHTTP.setRequestHeader("Cache-Control", "no-cache")
	$oHTTP.setRequestHeader("Accept-Language", "zh-cn")
	$oHTTP.setRequestHeader("Accept-Encoding", "gzip, deflate")
	$oHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	
	$huitie = encode_url_string(GUICtrlRead($Edit1))
	$iDateCalc = _DateDiff('s', "1970/01/01 08:00:00", _NowCalc())
	$oHTTP.Send("message=" & $huitie & "&posttime=" & $iDateCalc & "&formhash=" & $code & "&subject=");post����
	$a = BinaryToString($oHTTP.responsebody)
EndFunc   ;==>huitie

Func encode_url_string($_the_string_to_encode = "")

	Local $the_string_binary = "", $the_string_encoded = "", $the_string_binary_single, $_the_string_to_encode_single
	For $i = 1 To StringLen($_the_string_to_encode)
		$_the_string_to_encode_single = StringMid($_the_string_to_encode, $i, 1)
		If StringRegExp($_the_string_to_encode_single, "[\w-_\[\]#/=\.]", 0) Then
			$the_string_encoded &= $_the_string_to_encode_single
		Else
			$the_string_binary_single = StringToBinary(StringMid($_the_string_to_encode, $i, 1) & " ")
			$the_string_binary_single = StringReplace($the_string_binary_single, "0x", "")
			$the_string_encoded &= "%" & StringMid($the_string_binary_single, 1, 2)
			$the_string_encoded &= "%" & StringMid($the_string_binary_single, 3, 2)
		EndIf
	Next
	Return $the_string_encoded
EndFunc