# API Center ❤️ all APIs

## Import from Kong API Gateway
![image](../../images/import-from-kong.png)

Playground to experiment importing APIs from Kong API Gateway. We start by creating an API Center instance using [Bicep resource definition](https://learn.microsoft.com/en-us/azure/templates/microsoft.apicenter/services?pivots=deployment-language-bicep) and then we will use the [Kong Admin API](https://docs.konghq.com/gateway/api/admin-oss/latest) to export Kong services and import them into API Center.

💡 Every step outlined below leverages the power of PowerShell scripts. This is designed so you can seamlessly integrate them into your automation workflows, CI/CD pipelines, webhooks, and more.

### Learning Objectives - Upon completing this lab, you should be able to:
- Deploy Azure API Center using Bicep.
- Configure the API Center metadata scheme for APIs, Environments and Deployments.
- Understand the Azure CLI commands to manage Azure API Center. [Full list of commands available here](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest).
- Create an enviroment with custom metadata properties 
- Register an API using the OpenAPI spec as the source of truth and assign API metadata properties.
- Register an API with individual commands to have full control over all the properties. 
- Search and discover the APIs registered in API Center.

### Prerequisites
- Install or update to the latest [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download)
- Install or update to the latest [Visual Studio Code](https://code.visualstudio.com/)
- Install the [Polyglot Notebooks extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode) from the VS Code marketplace
- Install or update to the latest [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
- Install or update to the latest [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli). The Azure API Center extension will automatically install the first time you run an [az apic](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) command.
- [An Azure Subscription](https://azure.microsoft.com/en-us/free/) with Contributor permissions
- [Sign in to Azure with Azure CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli-interactively)

### 🚀 Get started
Proceed by opening the [Jupyter notebook](import-from-generic-openapi.ipynb), and follow the steps provided.

### 🗑️ Clean up resources
When you're finished with the lab, you should remove all your deployed resources from Azure to avoid extra charges and keep your Azure subscription uncluttered.
Use the [clean-up-resources notebook](clean-up-resources.ipynb) for that.