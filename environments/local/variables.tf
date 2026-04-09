variable "aws_region" {
    type            = string
    default         = "us-east-1"
}

variable "aws_access_key" {
    type            = string
    default         = "test"
}

variable "aws_secret_key" {
    type            = string
    default         = "test"
    sensitive       = true
}

variable "headscale_fqdn" {
    type            = string
    default         = "tailscale.example.com" 
}

variable "headscale_port" {
    type            = number
    default         = 8080 
}

variable "headscale_api_key" {
    type            = string
    default         = ""
    sensitive       = true
}

variable "headscale_pre_auth_key" {
    type            = string
    default         = ""
    sensitive       = true
}

variable "localstack_host" {
    type            = string
    default         = "localstack"
}

variable "localstack_port" {
    type            = number
    default         = 4566
}

variable "magicdns_domain" {
    type            = string
    default         = "magicdns.com"
}

variable "rabbitmq_admin_username" {
    type            = string
    default         = "guest"
}

variable "rabbitmq_admin_password" {
    type            = string
    default         = "guest"
    sensitive       = true
}

variable "rabbitmq_host" {
    type            = string
    default         = "rabbitmq"
}

variable "rabbitmq_port" {
    type            = number
    default         = 15672
}

variable "rabbitmq_application_username" {
    type            = string
    default         = "application_user"
}

variable "rabbitmq_application_password" {
    type            = string
    default         = "changeme123"
    sensitive       = true
}

variable "rabbitmq_vhost_name" {
    type            = string
    default         = "test"
}

variable "rabbitmq_queues" {
    type            = set(string)
    default         = [ "test" ]
}

variable "rabbitmq_exchanges" {
    type            = set(string)
    default         = [ "test" ]
  
}

variable "s3_bucket_names" {
    type            = set(string)
    default         = [ "bucket1", "bucket2", "bucket3" ]
}