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

#include <GuiListView.au3>
#include <WindowsConstants.au3>

$var = IniReadSection(@ScriptDir & '\Config.ini', 'Config')
If @error Then Exit MsgBox(48, "����", "��������INI�ļ���ȡʧ�ܣ�") ;INI�ļ���ȡ�����˳�
Dim $iChange = 25, $dqyc = 1 ;$iChange ÿҳ��ʾ���ٸ���Ŀ��$dqyc Ϊ��ǰҳ��
Dim $zys = Ceiling($var[0][0] / $iChange)

GUICreate("Listview��ҳ��ʾ", 400, 450)
$ListView1 = GUICtrlCreateListView("���|����", 5, 5, 390, 380, -1, BitOR($WS_EX_CLIENTEDGE, $LVS_EX_FULLROWSELECT, $LVS_REPORT))
_GUICtrlListView_SetColumnWidth($ListView1, 0, 100)
_GUICtrlListView_SetColumnWidth($ListView1, 1, 280)
$Button1 = GUICtrlCreateButton("��", 110, 400, 30, 22)
$Button2 = GUICtrlCreateButton("��", 190, 400, 30, 22)
$Label = GUICtrlCreateLabel('1', 143, 405, 18, 17, 0x0002)
GUICtrlCreateLabel('/' & $zys, 162, 405, 23, 17)
$Button3 = GUICtrlCreateButton("������ҳ", 30, 400, 80, 22)
$Button4 = GUICtrlCreateButton("����βҳ", 220, 400, 80, 22)
$Combo = GUICtrlCreateCombo('', 305, 402, 60, 22)
$Combodata = ''
For $i = 1 To $zys
        $Combodata &= '��' & $i & 'ҳ|'
Next
GUICtrlSetData(-1, $Combodata, '��1ҳ')
GUISetState()

Go(1) ;�״ζ�ȡ

While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case -3
                        Exit
                Case $Button1 ;��һҳ
                        Go($dqyc - 1)
                Case $Button2 ;��һҳ
                        Go($dqyc + 1)
                Case $Button3 ;��ҳ
                        Go(1)
                Case $Button4 ;βҳ
                        Go($zys)
                Case $Combo ;����ѡ��ҳ��
                        Go(StringRegExpReplace(GUICtrlRead($Combo), '[^\d]', ''))
        EndSwitch
WEnd

Func Go($yc)
        Local $iNo1 = ($yc - 1) * $iChange + 1
        Local $iNo2
        If $yc = $zys Then
                $iNo2 = $var[0][0]
                SetState(64, 128, 64, 128)
        ElseIf $yc = 1 Then
                $iNo2 = $iNo1 + $iChange - 1
                SetState(128, 64, 128, 64)
        Else
                $iNo2 = $iNo1 + $iChange - 1
                SetState(64, 64, 64, 64)
        EndIf
        Read($iNo1, $iNo2)
        GUICtrlSetData($Label, $yc)
        GUICtrlSetData($Combo, '��' & $yc & 'ҳ')
        $dqyc = $yc
EndFunc   ;==>Go

Func SetState($1, $2, $3, $4)
        GUICtrlSetState($Button1, $1)
        GUICtrlSetState($Button2, $2)
        GUICtrlSetState($Button3, $3)
        GUICtrlSetState($Button4, $4)
EndFunc   ;==>SetState

Func Read($iNo1, $iNo2)
        _GUICtrlListView_DeleteAllItems($ListView1)
        For $i = $iNo1 To $iNo2
                GUICtrlCreateListViewItem($var[$i][0] & '|' & $var[$i][1], $ListView1)
        Next
	EndFunc   ;==>Read
	
#cs
Config.ini
[Config]
1=��Ŀ1
2=��Ŀ2
3=��Ŀ3
4=��Ŀ4
5=��Ŀ5
6=��Ŀ6
7=��Ŀ7
8=��Ŀ8
9=��Ŀ9
10=��Ŀ10
11=��Ŀ11
12=��Ŀ12
13=��Ŀ13
14=��Ŀ14
15=��Ŀ15
16=��Ŀ16
17=��Ŀ17
18=��Ŀ18
19=��Ŀ19
20=��Ŀ20
21=��Ŀ21
22=��Ŀ22
23=��Ŀ23
24=��Ŀ24
25=��Ŀ25
26=��Ŀ26
27=��Ŀ27
28=��Ŀ28
29=��Ŀ29
30=��Ŀ30
31=��Ŀ31
32=��Ŀ32
33=��Ŀ33
34=��Ŀ34
35=��Ŀ35
36=��Ŀ36
37=��Ŀ37
38=��Ŀ38
39=��Ŀ39
40=��Ŀ40
41=��Ŀ41
42=��Ŀ42
43=��Ŀ43
44=��Ŀ44
45=��Ŀ45
46=��Ŀ46
47=��Ŀ47
48=��Ŀ48
49=��Ŀ49
50=��Ŀ50
51=��Ŀ51
52=��Ŀ52
53=��Ŀ53
54=��Ŀ54
55=��Ŀ55
56=��Ŀ56
57=��Ŀ57
58=��Ŀ58
59=��Ŀ59
60=��Ŀ60
61=��Ŀ61
62=��Ŀ62
63=��Ŀ63
64=��Ŀ64
65=��Ŀ65
66=��Ŀ66
67=��Ŀ67
68=��Ŀ68
69=��Ŀ69
70=��Ŀ70
71=��Ŀ71
72=��Ŀ72
73=��Ŀ73
74=��Ŀ74
75=��Ŀ75
76=��Ŀ76
77=��Ŀ77
78=��Ŀ78
79=��Ŀ79
80=��Ŀ80
81=��Ŀ81
82=��Ŀ82
83=��Ŀ83
84=��Ŀ84
85=��Ŀ85
86=��Ŀ86
87=��Ŀ87
88=��Ŀ88
89=��Ŀ89
90=��Ŀ90
91=��Ŀ91
92=��Ŀ92
93=��Ŀ93
94=��Ŀ94
95=��Ŀ95
96=��Ŀ96
97=��Ŀ97
98=��Ŀ98
99=��Ŀ99
100=��Ŀ100
101=��Ŀ101
102=��Ŀ102
103=��Ŀ103
104=��Ŀ104
105=��Ŀ105
106=��Ŀ106
107=��Ŀ107
108=��Ŀ108
109=��Ŀ109
110=��Ŀ110
111=��Ŀ111
112=��Ŀ112
113=��Ŀ113
114=��Ŀ114
115=��Ŀ115
116=��Ŀ116
117=��Ŀ117
118=��Ŀ118
119=��Ŀ119
120=��Ŀ120
121=��Ŀ121
122=��Ŀ122
123=��Ŀ123
124=��Ŀ124
125=��Ŀ125
126=��Ŀ126
127=��Ŀ127
128=��Ŀ128
129=��Ŀ129
130=��Ŀ130
131=��Ŀ131
132=��Ŀ132
133=��Ŀ133
134=��Ŀ134
135=��Ŀ135
136=��Ŀ136
137=��Ŀ137
138=��Ŀ138
139=��Ŀ139
140=��Ŀ140
141=��Ŀ141
142=��Ŀ142
143=��Ŀ143
144=��Ŀ144
145=��Ŀ145
146=��Ŀ146
147=��Ŀ147
148=��Ŀ148
149=��Ŀ149
150=��Ŀ150
151=��Ŀ151
152=��Ŀ152
153=��Ŀ153
154=��Ŀ154
155=��Ŀ155
156=��Ŀ156
157=��Ŀ157
158=��Ŀ158
159=��Ŀ159
160=��Ŀ160
161=��Ŀ161
162=��Ŀ162
163=��Ŀ163
164=��Ŀ164
165=��Ŀ165
166=��Ŀ166
167=��Ŀ167
168=��Ŀ168
169=��Ŀ169
170=��Ŀ170
171=��Ŀ171
172=��Ŀ172
173=��Ŀ173
174=��Ŀ174
175=��Ŀ175
176=��Ŀ176
177=��Ŀ177
178=��Ŀ178
179=��Ŀ179
180=��Ŀ180
181=��Ŀ181
182=��Ŀ182
183=��Ŀ183
184=��Ŀ184
185=��Ŀ185
186=��Ŀ186
187=��Ŀ187
188=��Ŀ188
189=��Ŀ189
190=��Ŀ190
191=��Ŀ191
192=��Ŀ192
193=��Ŀ193
194=��Ŀ194
195=��Ŀ195
196=��Ŀ196
197=��Ŀ197
198=��Ŀ198
199=��Ŀ199
200=��Ŀ200
201=��Ŀ201
202=��Ŀ202
203=��Ŀ203
204=��Ŀ204
205=��Ŀ205
206=��Ŀ206
207=��Ŀ207
208=��Ŀ208
209=��Ŀ209
210=��Ŀ210
211=��Ŀ211
212=��Ŀ212
213=��Ŀ213
214=��Ŀ214
215=��Ŀ215
216=��Ŀ216
217=��Ŀ217
218=��Ŀ218
219=��Ŀ219
220=��Ŀ220
221=��Ŀ221
222=��Ŀ222
223=��Ŀ223
224=��Ŀ224
225=��Ŀ225
226=��Ŀ226
227=��Ŀ227
228=��Ŀ228
229=��Ŀ229
230=��Ŀ230
231=��Ŀ231
232=��Ŀ232
233=��Ŀ233
234=��Ŀ234
235=��Ŀ235
236=��Ŀ236
237=��Ŀ237
238=��Ŀ238
239=��Ŀ239
240=��Ŀ240
241=��Ŀ241
242=��Ŀ242
243=��Ŀ243
244=��Ŀ244
245=��Ŀ245
#ce