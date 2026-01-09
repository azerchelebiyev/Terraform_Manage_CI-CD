output "Kke_dynamodb_table_name" {
  value = module.dynamodb.table_name
}

output "kke_secret_arn" {
  value = module.secretsmanager.secret_arn
}

output "kke_elasticsearch_domain_endpoint" {
  value = module.elasticsearch.endpoint
}
