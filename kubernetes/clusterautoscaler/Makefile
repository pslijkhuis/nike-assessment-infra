include ../common.mk
include ../apps.mk


.PHONY: deploy
deploy: \
    add-repo \
    deploy-clusterautoscaler

.PHONY: add-repo
add-repo:
	helm repo add stable  https://kubernetes-charts.storage.googleapis.com/


.PHONY: deploy-clusterautoscaler
deploy-clusterautoscaler:
	@helm upgrade -i clusterautoscaler \
	     --namespace kube-system \
	     --version $(CLUSTERAUTOSCALER_CHART_VERSION) \
	     -f values.clusterautoscaler.yaml \
	     --set awsAccessKeyID=$(AWS_ACCESS_KEY_ID) \
	     --set awsSecretAccessKey=$(AWS_SECRET_ACCESS_KEY) \
	     stable/cluster-autoscaler
