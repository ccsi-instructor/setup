
# NWアダプタをdhcpに戻す
& 'C:\Setup\setup\control\Reset-AdapterConfig.ps1'




# NWアダプタの名前を設定する
& 'C:\Setup\setup\infra1\Set-AdapterName.ps1'



$ipaddrlist =@()

$ipaddrlist += (Get-NetIPAddress).IPAddress |?{$_ -like "172.*"}

 # 172.始まりのアドレスの個数が1以外の場合は処理を終了する
 if($ipaddrlist.Length -ne 1)
 {
    'Setup失敗. IPアドレス判定' >> 'C:\Setup\setup\log\err.log'
    return
 }


$ip_address = $ipaddrlist[0]


$ip_address > 'C:\Setup\setup\log\ip_address.txt'


