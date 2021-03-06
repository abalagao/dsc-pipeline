#set-executionPolicy unrestricted

echo 'create lcm meta.mof...'
.\dsc-lcm-settings.ps1

echo 'copy lcm settings...'
cp .\dsc-lcm-settings\* \dsc-smb-share\

echo 'apply lcm settings...'
set-dscLocalConfigurationManager -path .\dsc-lcm-settings\

echo 'remove dsc modules...'
uninstall-module certificateDSC -force

echo 'pull dsc config from smb...'
update-dscConfiguration -verbose -wait

