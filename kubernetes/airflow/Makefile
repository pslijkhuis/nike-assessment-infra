include ../common.mk
include ../apps.mk


.PHONY: deploy
deploy: \
    create-namespace \
    add-repo \
    deploy-airflow

.PHONY: create-namespace
create-namespace:
	kubectl create namespace airflow --dry-run -o yaml  | kubectl apply -f -

.PHONY: add-repo
add-repo:
	helm repo add stable  https://kubernetes-charts.storage.googleapis.com/


.PHONY: deploy-airflow
deploy-airflow:
	helm upgrade -i airflow \
	     --namespace airflow \
	     --version $(AIRFLOW_CHART_VERSION) \
	     -f values.airflow.yaml \
	     stable/airflow
