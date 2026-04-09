provider "aws" {
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  region                      = var.aws_region
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true

  endpoints {
    # apigateway     = "http://${var.localstack_ip}:4566"
    # apigatewayv2   = "http://${var.localstack_ip}:4566"
    # cloudformation = "http://${var.localstack_ip}:4566"
    # cloudwatch     = "http://${var.localstack_ip}:4566"
    # dynamodb       = "http://${var.localstack_ip}:4566"
    ec2            = "http://${var.localstack_host}:${var.localstack_port}"
    # es             = "http://${var.localstack_ip}:4566"
    # elasticache    = "http://${var.localstack_ip}:4566"
    # firehose       = "http://${var.localstack_ip}:4566"
    iam            = "http://${var.localstack_host}:4566"
    # kinesis        = "http://${var.localstack_ip}:4566"
    lambda         = "http://${var.localstack_host}:4566"
    # rds            = "http://${var.localstack_ip}:4566"
    # redshift       = "http://${var.localstack_ip}:4566"
    # route53        = "http://${var.localstack_ip}:4566"
    s3             = "http://s3.localhost.localstack.cloud:4566" # needs to be set to localhost instead of container ip
    # secretsmanager = "http://${var.localstack_ip}:4566"
    # ses            = "http://${var.localstack_ip}:4566"
    # sns            = "http://${var.localstack_ip}:4566"
    # sqs            = "http://${var.localstack_ip}:4566"
    # ssm            = "http://${var.localstack_ip}:4566"
    # stepfunctions  = "http://${var.localstack_ip}:4566"
    sts            = "http://${var.localstack_host}:4566"
  }
}

provider "headscale" {
  endpoint = "https://${var.headscale_fqdn}:${var.headscale_port}"
  api_key = var.headscale_api_key
}

provider "rabbitmq" {
  endpoint = "http://${var.rabbitmq_host}:15672"
  username = var.rabbitmq_admin_username
  password = var.rabbitmq_admin_password
}