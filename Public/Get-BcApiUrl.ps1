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

        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiPublisher,

        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiGroup,

        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiVersion,

        [Parameter(ParameterSetName = 'Standard')]
        [ValidateNotNullOrEmpty()]
        [string]$StandardVersion = 'v2.0',

        [Parameter(ParameterSetName = 'Automation')]
        [ValidateNotNullOrEmpty()]
        [string]$AutomationVersion = 'v2.0',

        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [Parameter(Mandatory, ParameterSetName = 'Standard')]
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [Parameter(Mandatory, ParameterSetName = 'Automation')]
        [guid]$CompanyId,

        [Parameter(Mandatory, ParameterSetName = 'ODataWebServices')]
        [string]$CompanyName,

        [Parameter(Mandatory ,ParameterSetName = 'Custom')]
        [string]$EntitySetName,

        [Parameter(Mandatory, ParameterSetName = 'ODataWebServices')]
        [string]$ServiceName
    )

    @(
        'https://api.businesscentral.dynamics.com/v2.0',
        $TenantId,
        $Environment,
        ($ODataWebservices ? 'ODataV4' : 'api'),
        ($StandardBeta -or $Automation ? 'microsoft' : $null),
        ($Custom ? $ApiPublisher : $null),
        ($StandardBeta -or $Custom ? $ApiGroup : $null),
        ($Automation ? 'automation' : $null),
        ($StandardBeta ? 'beta' : $null),
        ($Standard ? $StandardVersion : $null),
        ($Custom ? $ApiVersion : $null),
        ($Automation ? $AutomationVersion : $null),
        ($ODataWebservices ? "companies($CompanyName)" : "companies($CompanyId)"),
        ($Custom ? $EntitySetName : $null),
        ($ODataWebservices ? $ServiceName : $null)
    )
    | Where-Object { $_ }
    | Join-String -Separator '/'

    # FIXME: Urlencode?
}
