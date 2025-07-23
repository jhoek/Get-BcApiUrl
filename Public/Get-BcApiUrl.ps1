# https://yzhums.com/52262
function Get-BcApiUrl
{
    [CmdletBinding(DefaultParameterSetName = 'Custom')]
    param
    (
        [Parameter(ParameterSetName = 'StandardBeta')]
        [switch]$StandardBeta,

        [Parameter(ParameterSetName = 'Standard')]
        [switch]$Standard,

        [Parameter(ParameterSetName = 'Custom')]
        [switch]$Custom,

        [Parameter(ParameterSetName = 'Automation')]
        [switch]$Automation,

        [Parameter(ParameterSetName = 'ODataWebServices')]
        [switch]$ODataWebservices,

        [Parameter(Mandatory)]
        [guid]$TenantId,

        [Parameter(Mandatory)]
        [string]$Environment,

        [Parameter(ParameterSetName = 'Standard')]
        [ValidateNotNullOrEmpty()]
        [string]$StandardVersion = 'v2.0',

        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [Parameter(Mandatory, ParameterSetName = 'Standard')]
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [Parameter(Mandatory, ParameterSetName = 'Automation')]
        [guid]$CompanyId,

        [Parameter(Mandatory, ParameterSetName = 'ODataWebServices')]
        [string]$CompanyName
    )

    @(
        'https://api.businesscentral.dynamics.com/v2.0',
        $TenantId,
        $Environment,
        $ODataWebservices ? 'ODataV4' : 'api',
        $Standard ? $StandardVersion : $null,
        $ODataWebservices ? $null : "companies($CompanyId)"
    )
    | Where-Object { $_ }
    | Join-String -Separator '/'
}
