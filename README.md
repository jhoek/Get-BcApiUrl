# Get-BcApiUrl

PowerShell micro module for building Business Central API urls

<a name="Get-BcApiUrl"></a>
## Get-BcApiUrl
### Synopsis
Get-BcApiUrl -Custom -TenantId <guid> -Environment <string> -ApiPublisher <string> -ApiGroup <string> -ApiVersion <string> -CompanyId <guid> -EntitySetName <string> [<CommonParameters>]

Get-BcApiUrl -StandardBeta -TenantId <guid> -Environment <string> -ApiGroup <string> -CompanyId <guid> [<CommonParameters>]

Get-BcApiUrl -Standard -TenantId <guid> -Environment <string> -CompanyId <guid> [-StandardVersion <string>] [<CommonParameters>]

Get-BcApiUrl -Automation -TenantId <guid> -Environment <string> -CompanyId <guid> [-AutomationVersion <string>] [<CommonParameters>]

Get-BcApiUrl -ODataWebservices -TenantId <guid> -Environment <string> -CompanyName <string> -ServiceName <string> [<CommonParameters>]
### Syntax
```powershell
Get-BcApiUrl -Custom -TenantId <guid> -Environment <string> -ApiPublisher <string> -ApiGroup <string> -ApiVersion <string> -CompanyId <guid> -EntitySetName <string> [<CommonParameters>]

Get-BcApiUrl -StandardBeta -TenantId <guid> -Environment <string> -ApiGroup <string> -CompanyId <guid> [<CommonParameters>]

Get-BcApiUrl -Standard -TenantId <guid> -Environment <string> -CompanyId <guid> [-StandardVersion <string>] [<CommonParameters>]

Get-BcApiUrl -Automation -TenantId <guid> -Environment <string> -CompanyId <guid> [-AutomationVersion <string>] [<CommonParameters>]

Get-BcApiUrl -ODataWebservices -TenantId <guid> -Environment <string> -CompanyName <string> -ServiceName <string> [<CommonParameters>]
```
### Parameters
#### ApiGroup &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Custom, StandardBeta
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### ApiPublisher &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Custom
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### ApiVersion &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Custom
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Automation
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Automation
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### AutomationVersion &lt;string&gt;
    
    Required?                    false
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Automation
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### CompanyId &lt;guid&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Automation, Custom, Standard, StandardBeta
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### CompanyName &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           ODataWebServices
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Custom
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Custom
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### EntitySetName &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Custom
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Environment &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### ODataWebservices
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           ODataWebServices
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### ServiceName &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           ODataWebServices
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Standard
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Standard
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### StandardBeta
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           StandardBeta
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### StandardVersion &lt;string&gt;
    
    Required?                    false
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           Standard
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### TenantId &lt;guid&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
<div style='font-size:small'>License: https://github.com/jhoek/Get-BcApiUrl/blob/master/LICENSE</div>
<div style='font-size:small'>uncommonsense.nl</div>
<div style='font-size:small; color: #ccc'>Generated 23-07-2025 10:33</div>
