
# NWアダプタをdhcpに戻す
& 'C:\Setup\setup\control\Reset-AdapterConfig.ps1'


# 管理接続作業用NWの優先度を下げる
& 'C:\Setup\setup\control\Change-AdapterMetric.ps1'


# コース情報を取得する
$CourseCode = Get-Content C:\Setup\setup\log\CourseCode.txt


if( $CourseCode -eq 'infra1' )
{
    # NWアダプタの名前を設定する
    & 'C:\Setup\setup\infra1\Set-AdapterName.ps1'

    # noVNCを起動しない
    & 'C:\Setup\setup\infra1\Disable-noVncTasks.ps1'
}




<#
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

#>

