locals {
  env = "dev"
}

variable "KKE_ENV" {
  default = local.env
}

variable "KKE_DYNAMODB_TABLE_NAME" {
  default = "nautilus-${local.env}-table"
}

variable "KKE_SECRET_NAME" {
  default = "nautilus-${local.env}-secret"
}

variable "KKE_SECRET_VALUE" {
  default = "nautilus-${local.env}-value"
}

variable "KKE_ELASTICSEARCH_DOMAIN" {
  default = "nautilus-${local.env}-es"
}
