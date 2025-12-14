# Load core dependency explicitly by path
$coreModulePath = Join-Path $PSScriptRoot "..\DEX.Automation\DEX.Automation.psd1"
Import-Module $coreModulePath -Force -ErrorAction Stop

# Load this module's functions
Get-ChildItem "$PSScriptRoot\src" -Recurse -Filter *.ps1 |
ForEach-Object {
    . $_.FullName
}

