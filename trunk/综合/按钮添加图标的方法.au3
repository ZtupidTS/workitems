#include <GuiButton.au3>
#include <GuiImageList.au3>
 
GUICreate("���ð�ťͼ��", 560, 100)
$But1 = GUICtrlCreateButton("ͼ�꿿��", 10, 20, 100, 60, $BS_FLAT)
_SetIcon(-1, 'shell32.dll', 22, 0, 20, 20)
 
$But2 = GUICtrlCreateButton("ͼ�꿿��", 120, 20, 100, 60, $BS_FLAT)
_SetIcon(-1, 'shell32.dll', 23, 1)
 
$But3 = GUICtrlCreateButton("ͼ�꿿��", 230, 20, 100, 60, $BS_FLAT)
_SetIcon(-1, "L:\���Խű�\Skin\tool.ico", 24, 2, 30, 30)
 
$But4 = GUICtrlCreateButton("ͼ�꿿��", 340, 20, 100, 60, $BS_FLAT)
_SetIcon(-1, 'shell32.dll', 25, 3, 35, 35)
 
$But5 = GUICtrlCreateButton("ͼ�����", 450, 20, 100, 60, $BS_FLAT)
_SetIcon(-1, 'shell32.dll', 26, 4, 40, 40)
GUISetState()
 
Do
Until GUIGetMsg() = -3
 
Func _SetIcon($hWnd, $sFile, $iIndex = 0, $nAlign = 0, $iWidth = 25, $iHeight = 25) ;�ؼ����, ͼ��ͼ���·��, ͼ������, ͼ���ڿؼ��е�λ��, ͼ����, ͼ��߶�
        $hImage1 = _GUIImageList_Create($iWidth, $iHeight, 5, 1, 0) ;����ͼ���б�ؼ�
        _GUIImageList_AddIcon($hImage1, $sFile, $iIndex, True) ;��ͼ���б����ͼ��
        _GUICtrlButton_SetImageList($hWnd, $hImage1, $nAlign) ;����һ��ͼ���б���ť�ؼ���$nAlign ��ͼ��λ�ò���
EndFunc