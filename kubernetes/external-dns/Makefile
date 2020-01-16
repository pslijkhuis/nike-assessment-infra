include ../common.mk
include ../apps.mk

CF_KEY=$(shell aws secretsmanager get-secret-value --secret-id arn:aws:secretsmanager:eu-west-1:252195394038:secret:cloudflare-nIM7ie | jq --raw-output .SecretString | jq -r ."CLOUDFLARE_KEY")

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
	     --set cloudflare.apiKey=$(CF_KEY) \
	     stable/external-dns
