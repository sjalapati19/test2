git clone git@github.com:ltpitt/azure-pipeline-exercise.git
az webapp up -n azure-pipeline-exercise -g azure-pipeline-exercise --sku S1
chmod +x make_predict_azure_app.sh && ./make_predict_azure_app.sh
az webapp log tail -g azure-pipeline-exercise -n azure-pipeline-exercise
az group delete -n azure-pipeline-exercise
