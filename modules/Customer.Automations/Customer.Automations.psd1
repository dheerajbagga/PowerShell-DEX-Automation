@{
    RootModule        = 'Customer.Automations.psm1'
    ModuleVersion     = '1.0.0'
    PowerShellVersion = '5.1'

    # 👇 Dependency on core module
    RequiredModules   = @(
        @{
            ModuleName = 'DEX.Automation'
            ModuleVersion = '1.0.0'
        }
    )

    FunctionsToExport = '*'
}
