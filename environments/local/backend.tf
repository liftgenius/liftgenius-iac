terraform {
  backend "local" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.32.0"
    }
    
    rabbitmq = {
      source = "0username/rabbitmq"
      version = "1.9.1"
    }

    headscale = {
      source = "awlsring/headscale"
      version = "0.4.2"
    }
  }
}