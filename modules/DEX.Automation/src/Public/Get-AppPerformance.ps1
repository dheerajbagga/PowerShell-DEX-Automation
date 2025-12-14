function Get-AppPerformance {
    param ([string]$AppName)

    Get-Process $AppName -ErrorAction SilentlyContinue |
    Select-Object Name, CPU, WorkingSet
}
