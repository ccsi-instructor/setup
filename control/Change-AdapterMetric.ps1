
# �Ǘ��ڑ���ƗpNW�̃��g���b�N�����������邱�ƂŁA���K�pNW��D�悷��
# �f�t�H���g�͂��ׂĂ�Adapter��Metric 10
 Get-NetIPInterface | ?{$_.InterfaceAlias -eq "[�ύX�֎~]�Ǘ��ڑ���ƗpNW" } | Set-NetIPInterface -InterfaceMetric 300
