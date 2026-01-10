1. Create modules under modules/ named:
dynamodb:Provision a DynamoDB table named nautilus-<env>-table (based on the environment)(dev & prod), using id as the HASH key.
secretsmanager: to provision a Secrets Manager secret named nautilus-<env>-secret.
elasticsearch: to provision an Elasticsearch domain named nautilus-<env>-es.
2. Create a secret value nautilus-<env>-value.(dev & prod).
3. Use symbolic links in each environment dev/prod for the shared Terraform files main.tf, variables.tf, and shared modules.
Keep a separate terraform_config.tf in each environment to define environment-specific configuration modules, environment variables, overrides. This file should NOT be a symlink.
4. Use main.tf file to define all shared resources and environment-specific modules, ensuring clarity, modularity, and maintainability.
5. Use the variables.tf file with the following variables:
KKE_ENV: name of the Environment used.(dev or prod)
KKE_DYNAMODB_TABLE_NAME: name of the dynamodb table.
KKE_SECRET_NAME: name of the secret.
KKE_SECRET_VALUE: secret value.
KKE_ELASTICSEARCH_DOMAIN: domain of the elasticsearch.
6. Use dev.tfvars and prod.tfvars with respect to the variables.tf file.
7. Use the following variables to output the following:
Kke_dynamodb_table_name: exposes the name of the created DynamoDB table
kke_secret_arn: provides the ARN of the Secrets Manager secret
kke_elasticsearch_domain_endpoint: returns the endpoint of the Elasticsearch domain
