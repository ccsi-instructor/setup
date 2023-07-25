

if (Test-Path 'C:\Setup\setup\log\Set-AdapterName.log')
{
    return
}

$ConsoleIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.0.*" }).InterfaceAlias
Rename-NetAdapter -Name $ConsoleIfName -NewName '[�ύX�֎~]�Ǘ��ڑ���ƗpNW'


$InternalIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.1.*" }).InterfaceAlias
Rename-NetAdapter -Name $InternalIfName -NewName '����NW'


$InternalIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.2.*" }).InterfaceAlias
Rename-NetAdapter -Name $InternalIfName -NewName '�g�����NNW'


$InternalIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.3.*" }).InterfaceAlias
Rename-NetAdapter -Name $InternalIfName -NewName 'DMZ'


Get-Date -Format 'yyyyMMddHHmmss' >> 'C:\Setup\setup\log\Set-AdapterName.log'


