<#
.SYNOPSIS
Builds the url for a Business Central (standard, custom, automation) API or OData webservice.

.LINK
https://yzhums.com/52262
#>
function Get-BcApiUrl
{
    [CmdletBinding(DefaultParameterSetName = 'Custom')]
    param
    (
        # Builds a url for the beta version of the standard Business Central API
        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [switch]$StandardBeta,

        # Builds a url for a non-beta version of the standard Business Central API
        [Parameter(Mandatory, ParameterSetName = 'Standard')]
        [switch]$Standard,

        # Builds a url for a custom Business Central API
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [switch]$Custom,

        # Builds a url for the Business Central automation API
        [Parameter(Mandatory, ParameterSetName = 'Automation')]
        [switch]$Automation,

        # Builds a url for a Business Central OData webservice
        [Parameter(Mandatory, ParameterSetName = 'ODataWebServices')]
        [switch]$ODataWebservices,

        # ID of the tenant
        [Parameter(Mandatory)]
        [guid]$TenantId,

        # Name of the environment within the tenant
        [Parameter(Mandatory)]
        [string]$Environment,

        # Name of the API publisher
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiPublisher,

        # Name of the API group
        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiGroup,

        # Version of the custom API
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [string]$ApiVersion,

        # Version of the standard API
        [Parameter(ParameterSetName = 'Standard')]
        [ValidateNotNullOrEmpty()]
        [string]$StandardVersion = 'v2.0',

        # Version of the automation API
        [Parameter(ParameterSetName = 'Automation')]
        [ValidateNotNullOrEmpty()]
        [string]$AutomationVersion = 'v2.0',

        # ID of the company within the environment
        [Parameter(Mandatory, ParameterSetName = 'StandardBeta')]
        [Parameter(Mandatory, ParameterSetName = 'Standard')]
        [Parameter(Mandatory, ParameterSetName = 'Custom')]
        [Parameter(Mandatory, ParameterSetName = 'Automation')]
        [guid]$CompanyId,

        # Name of the company within the environment
        [Parameter(Mandatory, ParameterSetName = 'ODataWebServices')]
        [string]$CompanyName,

        # Entity set name for custom API
        [Parameter(Mandatory ,ParameterSetName = 'Custom')]
        [string]$EntitySetName,

        # Service name for the OData webservice
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
    | ForEach-Object { [System.Uri]::EscapeUriString($_) }
}
