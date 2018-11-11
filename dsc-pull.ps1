set-executionPolicy Unrestricted

# create lcm meta mof
.\dsc-lcm-settings.ps1

# apply lcm settings
set-dscLocalConfigurationManager -path .\dsc-lcm-settings\

# pull dsc from smb
update-dscConfiguration -verbose -wait

# cat output 
echo ''
echo 'world.txt'
echo ''
cat .\world.txt
