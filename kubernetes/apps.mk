APPS = \
       roles \
       airflow \
       clusterautoscaler \
       nginx-ingress \
       external-dns


# Ref: https://github.com/helm/charts/tree/master/stable/airflow
AIRFLOW_CHART_VERSION=5.2.4

# Ref: https://github.com/helm/charts/tree/master/stable/cluster-autoscaler
CLUSTERAUTOSCALER_CHART_VERSION=6.2.0

# Ref: https://github.com/helm/charts/tree/master/stable/nginx-ingress
NGINXINGRESS_CHART_VERSION=1.29.1

# Ref: https://github.com/helm/charts/tree/master/stable/external-dns
EXTERNALDNS_CHART_VERSION=2.14.2
