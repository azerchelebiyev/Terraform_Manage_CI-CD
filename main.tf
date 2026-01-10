# 1. DynamoDB Modulu
module "dynamodb" {
  source     = "../../modules/dynamodb"
  table_name = var.KKE_DYNAMODB_TABLE_NAME
}

# 2. Secrets Manager Modulu
module "secretsmanager" {
  source       = "../../modules/secretsmanager"
  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

# 3. Elasticsearch Modulu
module "elasticsearch" {
  source      = "../../modules/elasticsearch"
  domain_name = var.KKE_ELASTICSEARCH_DOMAIN
}

# --- Tələb Olunan Output-lar ---

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