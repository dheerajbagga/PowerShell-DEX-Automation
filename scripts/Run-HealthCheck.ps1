Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$modulePath = Join-Path $PSScriptRoot "..\modules\DEX.Automation\DEX.Automation.psd1"
Import-Module $modulePath -Force -ErrorAction Stop


$health = Get-DeviceHealth -DeviceName $env:COMPUTERNAME
Write-Output $health

if ($health.CPU -gt 85) {
    Invoke-Remediation -Action "RestartApp" -Target "Teams"
}

