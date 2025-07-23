# Get-BcApiUrl

PowerShell micro module for building Business Central API urls

<a name="Get-BcApiUrl"></a>
## Get-BcApiUrl
### Synopsis
Builds the url for a Business Central (standard, custom, automation) API or OData webservice.
### Syntax
```powershell
Get-BcApiUrl -Custom -TenantId <guid> -Environment <string> -ApiPublisher <string> -ApiGroup <string> -ApiVersion <string> -CompanyId <guid> -EntitySetName <string> [<CommonParameters>]

Get-BcApiUrl -StandardBeta -TenantId <guid> -Environment <string> -ApiGroup <string> -CompanyId <guid> [<CommonParameters>]

Get-BcApiUrl -Standard -TenantId <guid> -Environment <string> -CompanyId <guid> [-StandardVersion <string>] [<CommonParameters>]

Get-BcApiUrl -Automation -TenantId <guid> -Environment <string> -CompanyId <guid> [-AutomationVersion <string>] [<CommonParameters>]

Get-BcApiUrl -ODataWebservices -TenantId <guid> -Environment <string> -CompanyName <string> -ServiceName <string> [<CommonParameters>]
```
### Parameters
#### StandardBeta [&lt;SwitchParameter&gt;]
    
    Required?                    true
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### Standard [&lt;SwitchParameter&gt;]
    
    Required?                    true
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### Custom [&lt;SwitchParameter&gt;]
    
    Required?                    true
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### Automation [&lt;SwitchParameter&gt;]
    
    Required?                    true
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### ODataWebservices [&lt;SwitchParameter&gt;]
    
    Required?                    true
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### TenantId &lt;Guid&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### Environment &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### ApiPublisher &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### ApiGroup &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### ApiVersion &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### StandardVersion &lt;String&gt;
    
    Required?                    false
    Position?                    named
    Default value                v2.0
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### AutomationVersion &lt;String&gt;
    
    Required?                    false
    Position?                    named
    Default value                v2.0
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### CompanyId &lt;Guid&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### CompanyName &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### EntitySetName &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
#### ServiceName &lt;String&gt;
    
    Required?                    true
    Position?                    named
    Default value                
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false
<div style='font-size:small'>License: https://github.com/jhoek/Get-BcApiUrl/blob/master/LICENSE</div>
<div style='font-size:small'>uncommonsense.nl</div>
<div style='font-size:small; color: #ccc'>Generated 23-07-2025 10:36</div>
