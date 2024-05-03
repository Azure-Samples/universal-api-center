# API Center ❤️ all APIs

[![Open Source Love](https://firstcontributions.github.io/open-source-badges/badges/open-source-v1/open-source.svg)](https://github.com/firstcontributions/open-source-badges)

## Contents 
1. [🌐 Universal API Center](#-universal-api-center)
2. [🧪 Labs](#-labs)
3. [🚀 Getting started](#-getting-started)
7. [🥇 Other Resources](#-other-resources)

In the current era of digital transformation, organizations are increasingly adopting cloud-based technologies and incorporating microservice patterns, which has been a catalyst in significantly escalating the use of Application Programming Interfaces (APIs). The application of these APIs stretches across a diverse array of platforms, various environments, and different architectural designs, which suggests a gradual evolution in technological infrastructure that is crucial in sustaining a prosperous business landscape. 

However, organisations struggling to adapt to this API proliferation, face three major challenges:
- The first is the complex task of identifying APIs due to a proliferation of platforms, API Gateways and other tools implemented by disparate teams and environments, forming a complicated maze and creating significant obstacles for modern organisations. 
- Secondly, each API, which enables varied functionalities across multiple environments and platforms, carries its own unique set of quality standards. This evolving and diverse API landscape spawns a complex management area for IT departments, particularly while managing multiple versions and embodiments of APIs, resembling a daunting trap requiring extensive effort to manage an overwhelming number of API variations. 
- Thirdly, the recent spike in security attacks directed at APIs, pose a significant concern for today's enterprises. The arrival of concealed or 'shadow' APIs introduces potential security risks, obliging companies to conduct exhaustive forensic evaluations to determine potential damage and strategize appropriate mitigation tactics. Thus, mitigating these security risks demands proper API Governance and ongoing threat monitoring capabilities to safeguard an organisation's digital ecosystem.


## 🌐 Universal API Center
![Universal API Center](images/api-center.png)

🚀 We are pleased to introduce the API Center, a new Azure service designed to address the various complexities associated with API proliferation. This ground-breaking solution will empower businesses with a reliable, seamless approach to overcoming these challenges, paving the way for enhanced operational efficiencies and productivity.

The API Center provides a centralized platform for discovering, reusing, and governing all of your APIs. It establishes a structured and systematic inventory of your organization's APIs, irrespective of their type, lifecycle stage, or deployment location. Further, it accommodatively provides related information such as version specifics, API definition files, and shared metadata. Utilizing the API Center, various stakeholders within your organization including API program managers, IT administrators, application developers, and API developers can smoothly discover, reuse, and govern APIs.

### Benefits
- Having a robust inventory of APIs within an organization's framework is crucial as it fosters effective communication and collaboration between API program managers and developers. This not only amplifies the quality and reusability of APIs but also amplifies their security and compliance. Ultimately, this strategic approach leads to an advantageous uptick in developer productivity.
- Enhancing your organization's API governance offers a crucial advantage. It allows API program managers and IT administrators to maintain comprehensive oversight of the API creation and utilization within their organization. This enhanced visibility promotes adherence to organizational standards by facilitating the definition of custom metadata and the analysis of API definitions. This in turn enables the enforcement of conformance to API style guidelines, thereby improving the overall API management.
- API Center enhances API discovery, enabling organizations to promote API reuse and optimize developer productivity by assisting both program managers and developers in identifying API inventory and filtering with both built-in and bespoke metadata properties. Moreover, the API Center expedites API consumption to further boost developer efficiency, safeguarding secure and organizationally compliant usage of APIs.

To expedite the realization of the above benefits, we have constructed a variety of labs demonstrating the seamless cataloguing of APIs from diverse gateways and sources. This step is integral in our goal to establish a truly  **Universal API center**.


## 🧪 Labs

The labs, structured as Jupyter notebooks, offer thorough guidance on utilizing PowerShell scripts in conjunction with Azure CLI commands. These comprehensive instructions cover diverse functionalities, including importing, and discovering APIs.

> [!TIP]
> You can apply the supplied Powershell scripts across various platforms, including Windows, Linux, and Mac, to construct automation workflows, continuous integration, and continuous delivery pipelines, among other procedures. This facilitates the enhancement of productivity and efficiency within your operations.

|  |  | | |
| ---- | ----- | ----------- | -- |
| [Import from generic OpenAPI](labs/import-from-generic-openapi/import-from-generic-openapi.ipynb) | [![image](images/import-from-generic-openapi.png)](labs/import-from-generic-openapi/import-from-generic-openapi.ipynb) | Playground to experiment importing APIs in the OpenAPI specification into API Center. We start by creating an API Center instance using [Bicep resource definition](https://learn.microsoft.com/en-us/azure/templates/microsoft.apicenter/services?pivots=deployment-language-bicep) and then we will use the [Azure CLI]((https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest)) to import the APIs. | [💬](../../issues/2 "Discussion") |
| [Import from Azure API Management](labs/import-from-azure-apim/import-from-azure-apim.ipynb)     | [![image](images/import-from-azure-apim.png)](labs/import-from-azure-apim/import-from-azure-apim.ipynb) | Playground to experiment importing APIs from Azure APIM into API Center. We start by creating APIM and API Center instances using [Bicep resource definition](https://learn.microsoft.com/en-us/azure/templates/microsoft.apicenter/services?pivots=deployment-language-bicep) and then we will use the [Azure CLI]((https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest)) to import the APIs from APIM. | [💬](../../issues/3 "Discussion") |
| [Import from Amazon API Gateway](labs/import-from-aws/import-from-aws.ipynb)     | [![image](images/import-from-aws.png)](labs/import-from-aws/import-from-aws.ipynb) | Playground to experiment importing APIs from Amazon API Gateway. We will use the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) to export the APIs and the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) to import the APIs into API Center. | [💬](../../issues/4 "Discussion") |
| [Import from Apigee](labs/import-from-gcp/import-from-gcp.ipynb)     | [![image](images/import-from-gcp.png)](labs/import-from-gcp/import-from-gcp.ipynb) | Playground to experiment importing APIs from Apigee. We will use the [GCP CLI](https://cloud.google.com/sdk/docs/install-sdk) to export the Apigee APIs and the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) to import the APIs into API Center. | [💬](../../issues/5 "Discussion") |
| [Import from Kong](labs/import-from-kong/import-from-kong.ipynb)     | [![image](images/import-from-kong.png)](labs/import-from-kong/import-from-kong.ipynb) | Work in progress | [💬](../../issues/6 "Discussion") |
| [Import from Mulesoft](labs/import-from-mulesoft/import-from-mulesoft.ipynb)     | [![image](images/import-from-mulesoft.png)](labs/import-from-mulesoft/import-from-mulesoft.ipynb) | Playground to experiment importing APIs from the MuleSoft Anypoint platform. We will use the [Anypoint Platform CLI](https://docs.mulesoft.com/anypoint-cli/latest/) to export the APIs and the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) to import the APIs into API Center. | [💬](../../issues/7 "Discussion") |
| [Import from Kubernetes](labs/import-from-k8s/import-from-k8s.ipynb)     | [![image](images/import-from-k8s.png)](labs/import-from-k8s/import-from-k8s.ipynb) | Work in progress | [💬](../../issues/8 "Discussion") |
| [Import from Git](labs/import-from-git/import-from-git.ipynb)     | [![image](images/import-from-git.png)](labs/import-from-git/import-from-git.ipynb) | Work in progress | [💬](../../issues/9 "Discussion") |

> [!TIP]
> Kindly use [the feedback discussion](../../discussions/1) so that we can continuously improve with your experiences, suggestions, ideas or lab requests.

## 🚀 Getting Started

### Prerequisites
- Install or update to the latest [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download)
- Install or update to the latest [Visual Studio Code](https://code.visualstudio.com/)
- Install the [Polyglot Notebooks extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode) from the VS Code marketplace
- Install or update to the latest [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
- Install or update to the latest [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli). The Azure API Center extension will automatically install the first time you run an [az apic](https://learn.microsoft.com/en-us/cli/azure/apic?view=azure-cli-latest) command.
- [An Azure Subscription](https://azure.microsoft.com/en-us/free/) with Contributor permissions
- [Sign in to Azure with Azure CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli-interactively)

### Quickstart
1. Clone this repo and configure your local machine with the prerequisites. Or just create a [GitHub Codespace](https://codespaces.new/Azure-Samples/universal-api-center/tree/main) and run it on the browser or in VS Code.
2. Navigate through the available labs and select one that best suits your needs. For starters we recommend the [import from generic OpenAPI](labs/import-from-generic-openapi/import-from-generic-openapi.ipynb).
3. Open the notebook and run the provided steps.
4. Tailor the experiment according to your requirements. If you wish to contribute to our collective work, we would appreciate your [submission of a pull request](CONTRIBUTING.MD).

> [!NOTE]
> 🪲 Please feel free to open a new [issue](../../issues/new) if you find something that should be fixed or enhanced.

## 🥇 Other resources

- [API Center Overview video](https://www.youtube.com/watch?v=Y9K3Fx2TpCo)
- [API Center documentation](https://learn.microsoft.com/en-us/azure/api-center/)
- [Self-host Your Azure API Center Portal](https://github.com/Azure/APICenter-Portal-Starter)
- [Analyze your API Specs with Azure API Center](https://github.com/Azure/APICenter-Analyzer)
- [Govern SAP APIs living in various API Management gateways in a single place with Azure API Center](https://community.sap.com/t5/technology-blogs-by-members/govern-sap-apis-living-in-various-api-management-gateways-in-a-single-place/ba-p/13682483)

> We believe that there may be valuable content that we are currently unaware of. We would greatly appreciate any suggestions or recommendations to enhance this list.

### 🌐 WW GBB initiative

![GBB](images/gbb.png)

### Disclaimer
> [!IMPORTANT]
> This software is provided for demonstration purposes only. It is not intended to be relied upon for any purpose. The creators of this software make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the software or the information, products, services, or related graphics contained in the software for any purpose. Any reliance you place on such information is therefore strictly at your own risk.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

Trademarks This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft trademarks or logos is subject to and must follow Microsoft’s Trademark & Brand Guidelines. Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship. Any use of third-party trademarks or logos are subject to those third-party’s policies.

