echo on

echo smb...
.\dsc-resource-smb.ps1

echo mof...
.\dsc-create-mof.ps1

echo lcm...
.\dsc-deploy-dsc.ps1

echo test...
more \hello\world.txt

