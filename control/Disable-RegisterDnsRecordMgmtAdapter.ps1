
# アダプターをDNSサーバーに登録しない
Get-NetIPInterface | ?{$_.InterfaceAlias -eq "[変更禁止]管理接続作業用NW"} | Set-DnsClient -RegisterThisConnectionsAddress $false
