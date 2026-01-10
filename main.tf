module "dynamodb" {
  source     = "./modules/dynamodb" # Artıq ../.. ehtiyac yoxdur, çünki qovluq linklənib
  table_name = var.KKE_DYNAMODB_TABLE_NAME
}

module "secretsmanager" {
  source       = "./modules/secretsmanager"
  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

module "elasticsearch" {
  source      = "./modules/elasticsearch"
  domain_name = var.KKE_ELASTICSEARCH_DOMAIN
}

output "Kke_dynamodb_table_name" {
  value       = module.dynamodb.table_name
  description = "DynamoDB cədvəlinin adı"
}

output "kke_secret_arn" {
  value       = module.secretsmanager.secret_arn
  description = "Secrets Manager sirrinin ARN-i"
}

output "kke_elasticsearch_domain_endpoint" {
  value       = module.elasticsearch.endpoint
  description = "Elasticsearch domain endpoint-i"
}