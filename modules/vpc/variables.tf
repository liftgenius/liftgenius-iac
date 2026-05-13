variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "ministack-vpc"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "subnet_count" {
  description = "Number of subnets (min 2 for RDS)"
  type        = number
  default     = 2
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
