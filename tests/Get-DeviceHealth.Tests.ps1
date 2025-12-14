Describe "Get-DeviceHealth" {
    It "Returns device health object" {
        $result = Get-DeviceHealth -DeviceName "TestDevice"
        $result.DeviceName | Should -Be "TestDevice"
    }
}
