class DeviceHealth {
    [string]$DeviceName
    [double]$CPU
    [double]$MemoryUsedGB
    [string]$Status

    DeviceHealth($device, $cpu, $memory, $status) {
        $this.DeviceName = $device
        $this.CPU = $cpu
        $this.MemoryUsedGB = $memory
        $this.Status = $status
    }
}
