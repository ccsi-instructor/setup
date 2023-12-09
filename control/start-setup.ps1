
# NW�A�_�v�^��dhcp�ɖ߂�
& 'C:\Setup\setup\control\Reset-AdapterConfig.ps1'

# �Ǘ��ڑ���ƗpNW��IP�A�h���X��DNS�T�[�o�[�ɓo�^�����Ȃ� 
& 'C:\Setup\setup\control\Disable-RegisterDnsRecordMgmtAdapter.ps1'


# �Ǘ��ڑ���ƗpNW�̗D��x��������
& 'C:\Setup\setup\control\Change-AdapterMetric.ps1'



# NW�A�_�v�^�̖��O��ݒ肷��
& 'C:\Setup\setup\infra1\Set-AdapterName.ps1'

# noVNC���N�����Ȃ�
& 'C:\Setup\setup\infra1\Disable-noVncTasks.ps1'


<# 2023.12.9 CourseCode��Injection���s���ł��邽�߈ꎞ�R�����g�A�E�g����

# �R�[�X�����擾����
$CourseCode = Get-Content C:\Setup\setup\log\CourseCode.txt


if( $CourseCode -eq 'infra1' )
{
    # NW�A�_�v�^�̖��O��ݒ肷��
    & 'C:\Setup\setup\infra1\Set-AdapterName.ps1'

    # noVNC���N�����Ȃ�
    & 'C:\Setup\setup\infra1\Disable-noVncTasks.ps1'
}
#>



<#
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

#>

