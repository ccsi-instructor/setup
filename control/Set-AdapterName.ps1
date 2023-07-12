



$ConsoleIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.0.*" }).InterfaceAlias
Rename-NetAdapter -Name $ConsoleIfName -NewName '管理接続作業用NW'



$InternalIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.1.*" }).InterfaceAlias
Rename-NetAdapter -Name $InternalIfName -NewName '内部NW'


