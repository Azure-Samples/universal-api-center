
@description('The prefix name of the API Center resource')
param apicResourceNamePrefix string

@description('Location for the API Center resource')
param apicResourceLocation string = resourceGroup().location

@description('Tags for the API Center resource')
param apicResourceTags object

@description('API Center Metadata Schema')
param apicMetadataSchema array = []

@description('API Center Environments')
param apicEnvironments array = []

@description('The prefix name of the API Management resource')
param apimResourceNamePrefix string

@description('Location for the APIM resource')
param apimResourceLocation string = resourceGroup().location

@description('The pricing tier of this API Management service')
@allowed([
  'Consumption'
  'Developer'
  'Basic'
  'Basicv2'
  'Standard'
  'Standardv2'
  'Premium'
])
param apimResourceSku string = 'Consumption'

@description('The instance size of this API Management service.')
@allowed([
  0
  1
  2
])
param apimResourceSkuCount int = 1

@description('The email address of the owner of the service')
param apimPublisherEmail string = 'noreply@microsoft.com'

@description('The name of the owner of the service')
param apimPublisherName string = 'Microsoft'

@description('List of API resources to create.')
param apisConfig array = []

var resourceSuffix = uniqueString(subscription().id, resourceGroup().id)

resource apic 'Microsoft.ApiCenter/services@2024-03-01' = {
  name: '${apicResourceNamePrefix}-${resourceSuffix}'
  location: apicResourceLocation
  tags: apicResourceTags
  identity: {
    type: 'SystemAssigned'
  }
}

resource apicMetadata 'Microsoft.ApiCenter/services/metadataSchemas@2024-03-01' = [for metadata in apicMetadataSchema: {
  name: metadata.name
  parent: apic
  properties: {
    schema: metadata.schema
    assignedTo: [for assignedTo in metadata.assignedTo: {      
        deprecated: false
        entity: assignedTo.entity
        required: assignedTo.required
      }
    ]    
  }
}]

resource apicWorkspace 'Microsoft.ApiCenter/services/workspaces@2024-03-01' existing = {
  name: 'default'
  parent: apic
}

resource symbolicname 'Microsoft.ApiCenter/services/workspaces/environments@2024-03-01' = [for environment in apicEnvironments: {
  name: environment.title
  parent: apicWorkspace
  properties: {
    customProperties: environment.customProperties
    description: environment.description
    kind: environment.kind
    onboarding: {
      developerPortalUri: [
        environment.onboarding.developerPortalUri
      ]
      instructions: environment.onboarding.instructions
    }
    server: {
      managementPortalUri: [
        environment.server.managementPortalUri
      ]
      type: environment.server.type
    }
    title: environment.title
  }
}]

resource apimService 'Microsoft.ApiManagement/service@2023-05-01-preview' = {
  name: '${apimResourceNamePrefix}-${resourceSuffix}'
  location: apimResourceLocation
  sku: {
    name: apimResourceSku
    capacity: (apimResourceSku == 'Consumption') ? 0 : ((apimResourceSku == 'Developer') ? 1 : apimResourceSkuCount)
  }
  properties: {
    publisherEmail: apimPublisherEmail
    publisherName: apimPublisherName
  }
  identity: {
    type: 'SystemAssigned'
  } 
}

var roleDefinitionID = resourceId('Microsoft.Authorization/roleDefinitions', '71522526-b88f-4d52-b57f-d31fc3546d0d') // API Management Service Reader Role
resource roleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
    scope: apimService
    name: guid(subscription().id, resourceGroup().id, apimService.name, roleDefinitionID)
    properties: {
        roleDefinitionId: roleDefinitionID
        principalId: apic.identity.principalId
        principalType: 'ServicePrincipal'
    }
}

resource apiResource 'Microsoft.ApiManagement/service/apis@2023-05-01-preview' = [for (api, i) in apisConfig: if(length(apisConfig) > 0) {
    name: api.name
    parent: apimService
    properties: {
      apiRevision: api.revision
      apiRevisionDescription: api.revisionDescription
      apiType: api.type
      description: api.description
      displayName: api.displayName
      contact: {
        email: api.contact.email
        name: api.contact.name
        url: api.contact.url
      }      
      license: {
        name: api.license.name
        url: api.license.url
      }      
      format: api.format
      path: api.path
      serviceUrl: api.serviceUrl
      protocols: [
        'https'
      ]
      subscriptionKeyParameterNames: {
        header: 'api-key'
        query: 'api-key'
      }
      subscriptionRequired: true
      termsOfServiceUrl: api.termsOfServiceUrl
      type: api.type
      value: api.specURL
  }
}]


output apicResourceId string = apic.id
output apicResourceName string = apic.name
output apicResourcePrincipalId string = apic.identity.principalId

output apimResourceId string = apimService.id
output apimResourceName string = apimService.name
