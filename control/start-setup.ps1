
$ipaddrlist =@()

$ipaddrlist += (Get-NetIPAddress).IPAddress |?{$_ -like "172.*"}

 # 172.�n�܂�̃A�h���X�̌���1�ȊO�̏ꍇ�͏������I������
 if($ipaddrlist.Length -ne 1)
 {
    'Setup���s. IP�A�h���X����' >> 'C:\Setup\setup\log\err.log'
    return
 }


$ip_address = $ipaddrlist[0]


$ip_address > 'C:\Setup\setup\log\ip_address.txt'


