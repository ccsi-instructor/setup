



$ConsoleIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.0.*" }).InterfaceAlias
Rename-NetAdapter -Name $ConsoleIfName -NewName 'ŠÇ—Ú‘±ì‹Æ—pNW'



$InternalIfName = (Get-NetIPAddress | ?{$_.IPAddress -like "10.*.1.*" }).InterfaceAlias
Rename-NetAdapter -Name $InternalIfName -NewName '“à•”NW'


