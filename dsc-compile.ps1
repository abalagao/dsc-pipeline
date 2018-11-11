Set-ExecutionPolicy Unrestricted

# compile dsc config mof
.\dsc-hello-config.ps1

# deploy dsc mof to smb share
rm c:\dsc-smb-share\*.mof
rm c:\dsc-smb-share\*.checksum
cp .\dsc-hello-config\localhost.mof c:\dsc-smb-share\57c20975-2d36-415e-bcfc-700a5e63e09e.mof

#create new checksum
New-DscChecksum -path C:\dsc-smb-share\

