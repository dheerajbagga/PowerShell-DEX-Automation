function Get-DeviceHealth {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$DeviceName
    )

    Validate-Input -Value $DeviceName

    $cpu = Get-Counter '\Processor(_Total)\% Processor Time'
    $memory = Get-CimInstance Win32_OperatingSystem

    return [DeviceHealth]::new(
        $DeviceName,
        [math]::Round($cpu.CounterSamples.CookedValue,2),
        [math]::Round((($memory.TotalVisibleMemorySize - $memory.FreePhysicalMemory)/1MB),2),
        "Healthy"
    )
}
