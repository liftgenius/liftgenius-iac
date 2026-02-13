variable "s3_bucket_name" {
    type        = string
    description = "Name for the S3 Bucket"
    default     = "my-bucket"
}

variable "cors_methods" {
    type        = set(string)
    description = "Allowed Methods for CORS configuration on bucket"
    default = [ "PUT", "POST" ]
}

variable "allowed_origins" {
    type = set(string)
    description = "Allowed Origins for CORS configuration on bucket"
    default = [ "https://example.com" ]
}

