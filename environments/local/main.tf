module "s3_bucket_and_policy" {
  source = "../../modules/s3_bucket_and_cors_policy"
  for_each = toset(var.s3_bucket_names)
  s3_bucket_name = each.key
  cors_methods = toset([ "GET", "PUT", "POST", "DELETE" ])
  allowed_origins = toset([ "*" ])
}


resource "rabbitmq_user" "application" {
  name     = var.rabbitmq_application_username
  password = var.rabbitmq_application_password
  tags     = ["management"]
}


resource "rabbitmq_vhost" "application" {
  name = var.rabbitmq_vhost_name
}

resource "rabbitmq_permissions" "application" {
  user  = "${rabbitmq_user.application.name}"
  vhost = "${rabbitmq_vhost.application.name}"

  permissions {
    configure = ".*"
    write     = ".*"
    read      = ".*"
  }
}


resource "rabbitmq_exchange" "application" {
  for_each = var.rabbitmq_exchanges
  name  = each.key
  vhost = "${rabbitmq_permissions.application.vhost}"

  settings {
    type        = "direct"
    durable     = true
    auto_delete = true
  }
}


resource "rabbitmq_queue" "application" {
  for_each = var.rabbitmq_queues
  name  = each.key
  vhost = "${rabbitmq_permissions.application.vhost}"

  settings {
    durable     = true
    auto_delete = false
  }
}