provider "aws" {
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  region                      = var.aws_region
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true

  endpoints {
    # apigateway     = "http://${var.localstack_ip}:${var.localstack_port}"
    # apigatewayv2   = "http://${var.localstack_ip}:${var.localstack_port}"
    # cloudformation = "http://${var.localstack_ip}:${var.localstack_port}"
    # cloudwatch     = "http://${var.localstack_ip}:${var.localstack_port}"
    # dynamodb       = "http://${var.localstack_ip}:${var.localstack_port}"
    # ec2            = "http://${var.localstack_host}:${var.localstack_port}"
    # es             = "http://${var.localstack_ip}:${var.localstack_port}"
    # elasticache    = "http://${var.localstack_ip}:${var.localstack_port}"
    # firehose       = "http://${var.localstack_ip}:${var.localstack_port}"
    iam            = "http://${var.localstack_host}:${var.localstack_port}"
    # kinesis        = "http://${var.localstack_ip}:${var.localstack_port}"
    lambda         = "http://${var.localstack_host}:${var.localstack_port}"
    # rds            = "http://${var.localstack_ip}:${var.localstack_port}"
    # redshift       = "http://${var.localstack_ip}:${var.localstack_port}"
    # route53        = "http://${var.localstack_ip}:${var.localstack_port}"
    s3             = "http://${var.localstack_host}:${var.localstack_port}"
    # secretsmanager = "http://${var.localstack_ip}:${var.localstack_port}"
    # ses            = "http://${var.localstack_ip}:${var.localstack_port}"
    # sns            = "http://${var.localstack_ip}:${var.localstack_port}"
    # sqs            = "http://${var.localstack_ip}:${var.localstack_port}"
    # ssm            = "http://${var.localstack_ip}:${var.localstack_port}"
    # stepfunctions  = "http://${var.localstack_ip}:${var.localstack_port}"
    # sts            = "http://${var.localstack_host}:${var.localstack_port}"
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
