module "placeholder" {
  source     = "./modules/dynamodb"
  env        = "root"
  table_name = "placeholder-table"
}
