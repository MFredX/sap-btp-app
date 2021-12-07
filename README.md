## CI/CD Pipeline for a UI5 Application in SAP BTP Cloud Foundry Environment

This repository demonstrates a simple CI/CD pipeline for a UI5 app that is deployed in SAP BTP Cloud Foundry Environment. The repo hopes to give a rough idea how such a pipeline would work.

## Implementation notes

- Azure DevOps was the CI/CD platform of choice.

- New builds and deployments will be triggered when new code is pushed to the master branch.

### Build Process

The `azure-pipelines.yml` outlines the steps of the build process.

### Release Process

#### Configuration

- **Agent pool** - Azure Pipelines

- **Agent Specification** - vs2017-win2016

#### Release Tasks

1. Downloaded Build Pipeline Artifact
2. Install Dependencies

   `cf install-plugin multiapps -f`

3. Cloud Foundry Login. Crednetials have to be added in the Task Variables section.

   `cf login -a $(api-url) -u $(dev-user) -p $(dev-password) -o $(org-name) -s $(dev-org)`

4. Cloud Foundry Deploy.

   Note - In my case I have to change directories to ensure I am in the correct location where the MTAR archive is present.

   `cd _sap-ui5-first/SAP-BTP-SAPUI5`

   `cf deploy sap-btp-sapui5_0.0.1.mtar`

## Application Details (Created by SAP Fiori tools upon creation)

|                                                                                                |
| ---------------------------------------------------------------------------------------------- |
| **Generation Date and Time**<br>Wed Dec 01 2021 04:43:51 GMT+0000 (Coordinated Universal Time) |
| **App Generator**<br>@sap/generator-fiori                                                      |
| **App Generator Version**<br>1.4.3                                                             |
| **Generation Platform**<br>SAP Business Application Studio                                     |
| **Floorplan Used**<br>simple                                                                   |
| **Service Type**<br>None                                                                       |

|**Service URL**<br>N/A
|**Module Name**<br>sapui5|
|**Application Title**<br>Tutorial|
|**Namespace**<br>sap.btp|
|**UI5 Theme**<br>sap_fiori_3|
|**UI5 Version**<br>Latest|
|**Enable Code Assist Libraries**<br>False|
|**Add Eslint configuration**<br>False|
|**Enable Telemetry**<br>True|

## sapui5

A Fiori application.

### Starting the generated app

- This app has been generated using the SAP Fiori tools - App Generator, as part of the SAP Fiori tools suite. In order to launch the generated app, simply run the following from the generated app root folder:

```
    npm start
```

#### Pre-requisites:

1. Active NodeJS LTS (Long Term Support) version and associated supported NPM version. (See https://nodejs.org)
