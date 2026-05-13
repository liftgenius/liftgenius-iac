module "s3_bucket_and_policy" {
  source = "./modules/s3_bucket_and_cors_policy"
  for_each = toset(var.s3_bucket_names)
  s3_bucket_name = each.key
  cors_methods = toset([ "GET", "PUT", "POST", "DELETE" ])
  allowed_origins = toset([ "*" ])
}

module "postgres_dev" {
  source = "./modules/rds_postgres"
  db_identifier = "liftgenius-db-dev"
  postgres_version = "18"
  instance_class = "db.t3.micro"
  db_name = "liftgenius_dev"
  db_username = "postgres"
  db_password = "postgres"
}

module "rabbitmq_dev" {
  source = "./modules/rabbitmq"
  rabbitmq_application_username = var.rabbitmq_application_username
  rabbitmq_application_password = var.rabbitmq_application_password
  rabbitmq_vhost_name = var.rabbitmq_vhost_name
  rabbitmq_exchanges = var.rabbitmq_exchanges
  rabbitmq_queues = var.rabbitmq_queues
}