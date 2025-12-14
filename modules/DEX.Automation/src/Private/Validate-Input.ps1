function Validate-Input {
    param ([string]$Value)

    if ([string]::IsNullOrWhiteSpace($Value)) {
        throw "Input value cannot be empty"
    }
}
