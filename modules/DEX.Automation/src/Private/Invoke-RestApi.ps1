function Invoke-RestApi {
    param (
        [string]$Uri,
        [string]$Method = "GET"
    )

    Invoke-RestMethod -Uri $Uri -Method $Method -TimeoutSec 30
}
