configuration dsc-hello-config
{
#   import-dscResource –ModuleName 'PSDesiredStateConfiguration'
   import-dscResource –ModuleName 'PSDscResources'

   node localhost
   {
      file 'dsc hello config'
      {
         destinationPath = 'c:\apps\dsc\world.txt'
         contents = 'it works!'
         ensure = 'present'
      }
   }
}
dsc-hello-config