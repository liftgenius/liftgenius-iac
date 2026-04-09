module "s3_bucket_and_policy" {
  source = "../../modules/s3_bucket_and_cors_policy"
  for_each = toset(var.s3_bucket_names)
  s3_bucket_name = each.key
  cors_methods = toset([ "GET", "PUT", "POST", "DELETE" ])
  allowed_origins = toset([ "*" ])
}

resource "rabbitmq_vhost" "video_processing_jobs" {
  name = "video_processing_jobs"
}


