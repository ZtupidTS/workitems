
;��ʱ¼��
WinActivate("RVMSƽ̨--�����")
ControlTreeView ("RVMSƽ̨--�����", "", "SysTreeView324", "Expand", "ͨ���б�|D9104B01")
  $1= ControlGetHandle("RVMSƽ̨--�����", "", "SysTreeView321")
   $2 =_GUICtrlTreeView_FindItem($1, "¼�������")
  _GUICtrlTreeView_ClickItem($1,$2,"left",True,1,2)
WinActivate("RVMSƽ̨--�����")
ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button15")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button16")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button17")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button18")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button27")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")

ControlClick( "RVMSƽ̨--�����", "ʱ���һ:", "Button19")
ControlClick( "RVMSƽ̨--�����", "ʱ��ζ�:", "Button20")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button21")
ControlClick( "RVMSƽ̨--�����", "ʱ�����:", "Button22")
ControlClick( "RVMSƽ̨--�����", "Ӧ����ÿһ��", "Button28")

WinWait("RVMSƽ̨--�������ʾ��Ϣ")
ControlClick("RVMSƽ̨--�������ʾ��Ϣ","ȷ��","Button1")
ControlClick( "RVMSƽ̨--�����", "ȷ��:", "Button28")