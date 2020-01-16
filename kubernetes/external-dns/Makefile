include ../common.mk
include ../apps.mk


.PHONY: deploy
deploy: \
    add-repo \
    deploy-externaldns

.PHONY: add-repo
add-repo:
	helm repo add stable  https://kubernetes-charts.storage.googleapis.com/


.PHONY: deploy-externaldns
deploy-externaldns:
	helm upgrade -i external-dns \
	     --namespace kube-system \
	     --version $(EXTERNALDNS_CHART_VERSION) \
	     -f values.externaldns.yaml \
	     --set cloudflare.apiKey=$(CLOUFLARE_KEY) \
	     stable/external-dns
