Set-ExecutionPolicy Unrestricted

## create local smb share
mkdir c:\dsc-smb-share
New-SmbShare -name dsc -path c:\dsc-smb-share

# zip powershell modules
Compress-Archive C:\dsc-smb-share\psDscResources.zip -path 'C:\Program Files\WindowsPowerShell\Modules\PSDscResources\2.9.0.0\DscResources\' -force

