Set-ExecutionPolicy Unrestricted

rm \dsc-smb-share\*

echo 'compile dsc config mof...'
.\dsc-hello-config.ps1

echo 'deploy dsc mof to smb share...'
cp .\dsc-hello-config\localhost.mof \dsc-smb-share\57c20975-2d36-415e-bcfc-700a5e63e09e.mof

echo 'create new checksum...'
new-dscChecksum -path \dsc-smb-share\

