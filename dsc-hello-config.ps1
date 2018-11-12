configuration dsc-hello-config
{
   import-dscResource –ModuleName PSDesiredStateConfiguration
   import-dscResource –ModuleName CertificateDSC

   node localhost
   {
      file 'dsc hello config'
      {
         destinationPath = 'c:\hello\world.txt'
         contents = 'success!!!'
         ensure = 'present'
      }

      registry 'CrashOnAuditFail' 
      {
         Ensure    = 'Present'
         Key       = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa'
         ValueName = 'crashonauditfail'
         ValueType = 'Dword'
         ValueData = '1'
      }  
   }
}
dsc-hello-config