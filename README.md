[![CI using GitHub Actions](https://github.com/ltpitt/azure-pipeline-exercise/actions/workflows/python-app.yml/badge.svg)](https://github.com/ltpitt/azure-pipeline-exercise/actions/workflows/python-app.yml)

# Overview

This repository contains a Python Web API (flask / scikit-learn) that is able to predict housing prices in Boston.
Included facilities allow to deploy the application in Azure Cloud Shell and deploy the application as an Azure App Service.
It features Continous Integration using GitHub Actions and Continous Deployment via a dedicated pipeline in Azure DevOps.

## Project Planning

* [The project's Trello board](https://trello.com/b/N9oJA84b/udacity-simple-board)
* [The project's management plan](project-management.xlsx)

## Instructions

### How to deploy the project using Azure Cloud Shell

Once in Azure Cloud Shell install the project and its requirements:
- ```git clone git@github.com:ltpitt/azure-pipeline-exercise.git```
![img/project_cloned_to_azure_cloud_shell.png](img/project_cloned_to_azure_cloud_shell.png)
- ```cd azure-pipeline-exercise```
- ```make setup```
- ```source ~/.udacity-devops/bin/activate```
- ```make all```
![img/make_all_from_azure_cloud_shell.png](img/make_all_from_azure_cloud_shell.png)

Then start the application locally:
```python app.py```

In order to test functionality open another Shell and:
```./make_prediction.sh```
![img/make_prediction.png](img/make_prediction.png)

### How to deploy the project using Azure App Service

The first step is creating an App Service in Azure, it is possible to use az cli tool from Azure Cloud Shell:
```az webapp up -n azure-pipeline-exercise -g azure-pipeline-exercise --sku S1```

Here's a screenshot of the App Service in Azure:
![img/app_service_in_azure.png](img/app_service_in_azure.png)

Now it is time to create the pipeline in Azure DevOps and lik it to this GitHub repo.

Here's a screenshot of a successful pipeline run:
![img/successful_pipeline_run.png](img/successful_pipeline_run.png)

After the project is successfully deployed it is possible to test its functionality:
```chmod +x make_predict_azure_app.sh && ./make_predict_azure_app.sh```
![img/make_predict_azure_app.png](img/make_predict_azure_app.png)

It is possible to visit the application via browser:
![img/web_page.png](img/web_page.png)

In order to check application logs:
```az webapp log tail -g azure-pipeline-exercise -n azure-pipeline-exercise```
![img/application_logs.png](img/application_logs.png)

Continous Integration architectural diagram
![img/CI_architectural_diagram.png](img/CI_architectural_diagram.png)

Continous Delivery architectural diagram
![img/CD_architectural_diagram.png](img/CD_architectural_diagram.png)

## Enhancements

- Explore the possibility to use Docker images

## Demo 

<TODO: Add link Screencast on YouTube>


