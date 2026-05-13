provider "aws" {
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  region                      = var.aws_region
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true

  endpoints {
    apigateway     = "http://${var.ministack_host}:${var.ministack_port}"
    apigatewayv2   = "http://${var.ministack_host}:${var.ministack_port}"
    cloudformation = "http://${var.ministack_host}:${var.ministack_port}"
    cloudwatch     = "http://${var.ministack_host}:${var.ministack_port}"
    dynamodb       = "http://${var.ministack_host}:${var.ministack_port}"
    ec2            = "http://${var.ministack_host}:${var.ministack_port}"
    es             = "http://${var.ministack_host}:${var.ministack_port}"
    elasticache    = "http://${var.ministack_host}:${var.ministack_port}"
    firehose       = "http://${var.ministack_host}:${var.ministack_port}"
    iam            = "http://${var.ministack_host}:${var.ministack_port}"
    kinesis        = "http://${var.ministack_host}:${var.ministack_port}"
    lambda         = "http://${var.ministack_host}:${var.ministack_port}"
    rds            = "http://${var.ministack_host}:${var.ministack_port}"
    redshift       = "http://${var.ministack_host}:${var.ministack_port}"
    route53        = "http://${var.ministack_host}:${var.ministack_port}"
    s3             = "http://${var.ministack_host}:${var.ministack_port}"
    secretsmanager = "http://${var.ministack_host}:${var.ministack_port}"
    ses            = "http://${var.ministack_host}:${var.ministack_port}"
    sns            = "http://${var.ministack_host}:${var.ministack_port}"
    sqs            = "http://${var.ministack_host}:${var.ministack_port}"
    ssm            = "http://${var.ministack_host}:${var.ministack_port}"
    stepfunctions  = "http://${var.ministack_host}:${var.ministack_port}"
    sts            = "http://${var.ministack_host}:${var.ministack_port}"
  }
}

provider "headscale" {
  endpoint = "https://${var.headscale_fqdn}:${var.headscale_port}"
  api_key = var.headscale_api_key
}

provider "rabbitmq" {
  endpoint = "http://${var.rabbitmq_host}:${var.rabbitmq_port}"
  username = var.rabbitmq_admin_username
  password = var.rabbitmq_admin_password
}
