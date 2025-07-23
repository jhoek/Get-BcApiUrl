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
        }

		It 'Standard Beta' {
            Get-BcApiUrl -StandardBeta -TenantId $TenantId -Environment $Environment -CompanyId $CompanyId
		}
	}
}
