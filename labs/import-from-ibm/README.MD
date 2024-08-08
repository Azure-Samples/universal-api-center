# API Center ❤️ all APIs

## Import from IBM® API Connect

![image](../../images/import-from-ibm.png)

Playground to experiment bulk importing APIs from IBM API Connect. We start by creating an API Center instance using [Bicep resource definition](https://learn.microsoft.com/en-us/azure/templates/microsoft.apicenter/services?pivots=deployment-language-bicep) and then we will use the [IBM API Connect Tooklit](https://www.ibm.com/docs/en/api-connect/10.0.8?topic=tool-overview-command-line) to export the APIs and the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) to import the APIs into API Center.

💡 Every step outlined below leverages the power of PowerShell scripts. This is designed so you can seamlessly integrate them into your automation workflows, CI/CD pipelines, webhooks, and more.

### Learning Objectives - Upon completing this lab, you should be able to

- Deploy Azure API Center using Bicep.
- Configure the API Center metadata scheme for APIs, Environments and Deployments.
- Understand the Azure CLI commands to manage Azure API Center. [Full list of commands available here](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest).
- Register APIs using the OpenAPI spec exported from IBM API Connect.
- Create deployments for each IBM API Connect Gateway.
- Search and discover the APIs registered in API Center.

### Prerequisites

- Install or update to the latest [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download)
- Install or update to the latest [Visual Studio Code](https://code.visualstudio.com/)
- Install the [Polyglot Notebooks extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode) from the VS Code marketplace
- Install or update to the latest [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
- Install or update to the latest [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli). The Azure API Center extension will automatically install the first time you run an [az apic](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) command.
- [An Azure Subscription](https://azure.microsoft.com/en-us/free/) with Contributor permissions
- [Sign in to Azure with Azure CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli-interactively)
- Install or update to the latest [IBM API Connect Toolkit](https://www.ibm.com/docs/en/api-connect/10.0.8?topic=configuration-installing-toolkit)
- [Logging in to a management server](https://www.ibm.com/docs/en/api-connect/10.0.8?topic=tool-logging-in-management-server)

### 🚀 Get started

Proceed by opening the [Jupyter notebook](import-from-ibm.ipynb), and follow the steps provided.

### 🗑️ Clean up resources

When you're finished with the lab, you should remove all your deployed resources from Azure to avoid extra charges and keep your Azure subscription uncluttered.
Use the [clean-up-resources notebook](clean-up-resources.ipynb) for that.
