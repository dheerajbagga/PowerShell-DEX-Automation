function Invoke-CustomerHealthWorkflow {

    $health = Get-DeviceHealth -DeviceName $env:COMPUTERNAME

    if ($health.CPU -gt 80) {
        Invoke-Remediation -Action RestartApp -Target "Teams"
        Write-Log "Customer rule triggered: Teams restarted"
    }
    write-Output "Output from Customer Health Workflow:"
    return $health
}
