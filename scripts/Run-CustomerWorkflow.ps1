Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$customerModulePath = Join-Path $PSScriptRoot "..\modules\Customer.Automations\Customer.Automations.psd1"
Import-Module $customerModulePath -Force -ErrorAction Stop

Invoke-CustomerHealthWorkflow

