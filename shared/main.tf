module "dynamodb" {
  source     = "../modules/dynamodb"
  env        = var.KKE_ENV
  table_name = var.KKE_DYNAMODB_TABLE_NAME
}

module "secretsmanager" {
  source       = "../modules/secretsmanager"
  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

module "elasticsearch" {
  source      = "../modules/elasticsearch"
  env         = var.KKE_ENV
  domain_name = var.KKE_ELASTICSEARCH_DOMAIN
}

# Outputs
output "Kke_dynamodb_table_name" {
  value = module.dynamodb.dynamodb_table_name
}

output "kke_secret_arn" {
  value = module.secretsmanager.secret_arn
}

output "kke_elasticsearch_domain_endpoint" {
  value = module.elasticsearch.elasticsearch_domain_endpoint
}
