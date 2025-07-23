# API (Beta)	        https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/api/{APIPublisher}/{APIGroup}/beta/companies({id})/
# API (v1.0)	        https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/api/v1.0/companies({id})/
# API (v2.0)	        https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/api/v2.0/companies({id})/
# custom APIs	        https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/api/{APIPublisher}/{APIGroup}/v2.0/companies({id})/{EntitySetName}
# automation APIs	    https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/api/microsoft/automation/v2.0/companies({id})
# OData Web Services	https://{businesscentralPrefix}/v2.0/{Tenant id}/{Environment id}/ODataV4/companies({name})/{Service Name}

Describe 'Get-BcApiUrl' {
	Context 'Get-BcApiUrl' {
        BeforeAll {
            $TenantId = New-Guid
            $CompanyId = New-Guid
            $CompanyName = 'My Company'
            $Environment = 'My Environment'
            $ApiPublisher = 'myApiPublisher'
            $ApiGroup = 'myApiGroup'
            $ApiVersion = 'v4.2'
            $StandardVersion = 'v2.0'
            $EntitySetName = 'gizmos'
            $ServiceName = 'gizmos'
        }

		It 'StandardBeta' {
            Get-BcApiUrl -StandardBeta -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId -ApiGroup $ApiGroup
            | Should -BeExactly "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/microsoft/$ApiGroup/beta/companies($CompanyId)"
		}

        It 'Standard' {
            Get-BcApiUrl -Standard -TenantId $TenantId -Environment $Environment -StandardVersion $StandardVersion -CompanyId $CompanyId
            | Should -BeExactly "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/$StandardVersion/companies($CompanyId)"
        }

        It 'Custom' {
            Get-BcApiUrl -Custom -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId -ApiPublisher $ApiPublisher -ApiGroup $ApiGroup -ApiVersion $ApiVersion -EntitySetName $EntitySetName
            | Should -BeExactly "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/$ApiPublisher/$ApiGroup/$ApiVersion/companies($CompanyId)/$EntitySetName"
        }

        It 'Automation' {
            Get-BcApiUrl -Automation -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId
            | Should -BeExactly "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/microsoft/automation/v2.0/companies($CompanyId)"
        }

        It 'OData Webservices' {
            Get-BcApiUrl -ODataWebservices -TenantId $TenantId -Environment $Environment -CompanyName $CompanyName -ServiceName $ServiceName
            | Should -BeExactly "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/ODataV4/companies($CompanyName)/$ServiceName"
        }
	}
}
