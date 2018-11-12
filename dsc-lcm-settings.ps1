[dscLocalConfigurationManager()]
configuration dsc-lcm-settings
{
   node localhost
   {
      settings 
      {
         configurationID = '57c20975-2d36-415e-bcfc-700a5e63e09e'
         refreshMode = 'pull'
      }

      configurationRepositoryShare 'dsc config source'
      {
         SourcePath = '\\vaio\dsc'
      }
   }
}
dsc-lcm-settings