variable "KKE_ENV" {
  type = string
}

variable "KKE_DYNAMODB_TABLE_NAME" {
  type = string
}

variable "KKE_SECRET_NAME" {
  type = string
}

variable "KKE_SECRET_VALUE" {
  type      = string
  sensitive = true
}

variable "KKE_ELASTICSEARCH_DOMAIN" {
  type = string
}
