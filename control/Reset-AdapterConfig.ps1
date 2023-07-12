
# 誤ってNWアダプタのIPアドレスを固定値に設定してしまった場合の対処
Get-NetAdapter | Get-NetIPInterface | ?{$_.Dhcp -eq 'Disabled'} | Set-NetIPInterface -Dhcp Enabled


