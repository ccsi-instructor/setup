
# �����NW�A�_�v�^��IP�A�h���X���Œ�l�ɐݒ肵�Ă��܂����ꍇ�̑Ώ�
Get-NetAdapter | Get-NetIPInterface | ?{$_.Dhcp -eq 'Disabled'} | Set-NetIPInterface -Dhcp Enabled

