## CI/CD Pipeline for a UI5 Application in SAP BTP Cloud Foundry Environment

This repository demonstrates a simple CI/CD pipeline for a UI5 app that is deployed in SAP BTP Cloud Foundry Environment. The repo hopes to give a rough idea how such a pipeline would work and can be considered a good starting point for CI/CD designs.

## Implementation notes

- Azure DevOps was the CI/CD platform of choice.

- New builds and deployments will be triggered when new code is pushed to the master branch.

- An AzureDevOps YAML pipeline was used

### Build and Deploy Process

The `azure-pipelines/azure-pipelines.yml` outlines the steps of the build and deploy process.

There are three stages currently in this pipeline;

1.  Build
2.  Test (Mock tests used)
3.  Deploy

## Other Helpful Resources

[Build a CI/CD Pipeline in Azure DevOps and connect it to SAP Cloud Foundry](https://blogs.sap.com/2021/01/25/build-a-ci-cd-pipeline-in-azure-devops-and-connect-it-to-sap-cloud-foundry/)

[DevOps: CAP CI/CD using Azure DevOps – Part 1](https://blogs.sap.com/2020/06/08/devops-cap-ci-cd-using-azure-devops-part-1/)

## Application Details (Created by SAP Fiori tools upon creation)

|                                                                                                |
| ---------------------------------------------------------------------------------------------- |
| **Generation Date and Time**<br>Wed Dec 01 2021 04:43:51 GMT+0000 (Coordinated Universal Time) |
| **App Generator**<br>@sap/generator-fiori                                                      |
| **App Generator Version**<br>1.4.3                                                             |
| **Generation Platform**<br>SAP Business Application Studio                                     |
| **Floorplan Used**<br>simple                                                                   |
| **Service Type**<br>None                                                                       |
| **Service URL**<br>N/A                                                                         |
| **Module Name**<br>sapui5                                                                      |
| **Application Title**<br>Tutorial                                                              |
| **Namespace**<br>sap.btp                                                                       |
| **UI5 Theme**<br>sap_fiori_3                                                                   |
| **UI5 Version**<br>Latest                                                                      |
| **Enable Code Assist Libraries**<br>False                                                      |
| **Add Eslint configuration**<br>False                                                          |
| **Enable Telemetry**<br>True                                                                   |

## sapui5

A Fiori application.

### Starting the generated app

- This app has been generated using the SAP Fiori tools - App Generator, as part of the SAP Fiori tools suite. In order to launch the generated app, simply run the following from the generated app root folder:

```
    npm start
```

#### Pre-requisites:

1. Active NodeJS LTS (Long Term Support) version and associated supported NPM version. (See https://nodejs.org)
