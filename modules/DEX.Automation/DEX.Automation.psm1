# Load all functions automatically
Get-ChildItem "$PSScriptRoot\..\src" -Recurse -Filter *.ps1 |
ForEach-Object { . $_.FullName }
