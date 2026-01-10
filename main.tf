module "dynamodb" {
  source = "./modules/dynamodb"

  table_name = var.KKE_DYNAMODB_TABLE_NAME
}

module "secretsmanager" {
  source = "./modules/secretsmanager"

  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

module "elasticsearch" {
  source = "./modules/elasticsearch"

  domain_name = var.KKE_ELASTICSEARCH_DOMAIN
}

output "Kke_dynamodb_table_name" {
  value = module.dynamodb.name
}

output "kke_secret_arn" {
  value = module.secretsmanager.arn
}

output "kke_elasticsearch_domain_endpoint" {
  value = module.elasticsearch.endpoint
}