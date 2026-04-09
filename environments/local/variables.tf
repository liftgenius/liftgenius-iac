variable "region" {
    type        = string
    default     = "us-east-1"
}

variable "access_key" {
    type        = string
    default     = "test"
}

variable "secret_key" {
    type        = string
    default     = "test"
    sensitive   = true
}

variable "rabbitmq_username" {
    type        = string
    default     = "guest"
}

variable "rabbitmq_password" {
    type        = string
    default     = "guest"
    sensitive   = true
}

variable "s3_bucket_names" {
    type        = set(string)
    default     = [ "bucket1", "bucket2", "bucket3" ]
}