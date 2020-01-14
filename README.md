![Status](https://github.com/pslijkhuis/nike-assessment-infra/workflows/Deploy%20Nike%20Assessment/badge.svg)

### Nike Assessment infra repo

## EKS Cluster

The EKS cluster is deployed using Terraform. If code is pushed to the repo it will automatically get deployed. State is saved in S3. Locks are done in DynamoDB.
AWS access if configured via environmental variables.

If you want to run terraform localy make sure to set the following variables:

* AWS_ACCES_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_DEFAULT_REGION

If these are set you deploy manually with the following command

```bash
terraform init
terraform plan
terraform apply
```

## Application deployment

Currently three application get deployed to the cluster

* Airflow
* Clusterautoscaler
* Nginx ingress controller

They all get deployed using Helm. Configuration per application can be found in kubernetes/APPLICATION_NAME

Pushing to the repo will trigger a deploy/update of the applications.

If you want to run locally you can execute make in the kubernetes/APPLICATION_NAME directory. If you want to deploy all application at once run make in kubernetes directory.

## Github Actions

The cluster and application are automatically deployed using Github Action. The cluster is first build and if that succeeds the applications are getting deployed.

Pipeline configuration can be found at .github/actions

