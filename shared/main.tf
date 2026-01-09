module "dynamodb" {
  source     = "../../modules/dynamodb"
  table_name = var.KKE_DYNAMODB_TABLE_NAME
}

module "secretsmanager" {
  source       = "../../modules/secretsmanager"
  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

module "elasticsearch" {
  source      = "../../modules/elasticsearch"
  domain_name = var.KKE_ELASTICSEARCH_DOMAIN
}
