#set-executionPolicy unrestricted

echo 'create local smb share...'
#mkdir c:\dsc-smb-share
#new-smbShare -name dsc -path c:\dsc-smb-share

echo 'install dsc modules...'
install-module certificateDSC -force

echo 'zip powershell dsc modules...'
compress-archive C:\dsc-smb-share\certificateDSC.zip -path 'c:\program files\windowsPowerShell\modules\certificateDSC\4.2.0.0\dscResources\' -force

