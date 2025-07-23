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
            $Environment = 'My Environment'
            $ApiPublisher = 'myApiPublisher'
            $ApiGroup = 'myApiGroup'
            $StandardVersion = 'V2.0'
        }

		It 'StandardBeta' {
            Get-BcApiUrl -StandardBeta -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId -ApiGroup $ApiGroup
            | Should -Be "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/microsoft/$ApiGroup/beta/companies($CompanyId)"
		}

        It 'Standard' {
            Get-BcApiUrl -Standard -TenantId $TenantId -Environment $Environment -StandardVersion $StandardVersion -CompanyId $CompanyId
            | Should -Be "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/$StandardVersion/companies($CompanyId)"
        }

        It 'Custom' {
            Get-BcApiUrl -Custom -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId -ApiPublisher $ApiPublisher -ApiGroup $ApiGroup
            | Should -Be "https://api.businesscentral.dynamics.com/v2.0/$TenantId/$Environment/api/$ApiPublisher/$ApiGroup/$ApiVersion/companies($CompanyId)/$EntitySetName"
        }
	}
}
