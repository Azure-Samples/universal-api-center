
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

output apicResourceId string = apic.id
output apicResourceName string = apic.name
output apicResourcePrincipalId string = apic.identity.principalId

