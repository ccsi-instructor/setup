
# NW�A�_�v�^��dhcp�ɖ߂�
& 'C:\Setup\setup\control\Reset-AdapterConfig.ps1'




# NW�A�_�v�^�̖��O��ݒ肷��
& 'C:\Setup\setup\infra1\Set-AdapterName.ps1'



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


