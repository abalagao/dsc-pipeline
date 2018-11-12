echo dscea...
$username = 'Venie'
$password = 'Murano2020'
$credentials =  New-Object System.Management.Automation.PsCredential -ArgumentList $userName, $password
$sessions = new-cimSession -Authentication Negotiate -ComputerName localhost -Credential $credentials
start-dscEAscan -cimSession $Sessions -mofFile .\dsc-hello-config\localhost.mof -verbose
