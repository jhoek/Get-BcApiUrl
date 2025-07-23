Import-Module '/Users/jhoek/GitHub/Get-BcApiUrl/Get-BcApiUrl.psd1' -Force -PassThru
| Export-ModuleDocumentation
| Out-File -FilePath (Join-Path -Path $PSScriptRoot -ChildPath README.md) -Encoding utf8
