variable "KKE_ENV" {
  description = "Environment name (dev or prod)"
  type        = string
}

variable "KKE_DYNAMODB_TABLE_NAME" {
  description = "DynamoDB table name"
  type        = string
}

variable "KKE_SECRET_NAME" {
  description = "Secrets Manager secret name"
  type        = string
}

variable "KKE_SECRET_VALUE" {
  description = "Secret value"
  type        = string
  sensitive   = true
}

variable "KKE_ELASTICSEARCH_DOMAIN" {
  description = "Elasticsearch domain name"
  type        = string
}
