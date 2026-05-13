output "db_endpoint" {
  description = "The endpoint of the RDS database"
  value       = aws_db_instance.postgres.endpoint
}

output "db_address" {
  description = "The hostname of the RDS database"
  value       = aws_db_instance.postgres.address
}

output "db_port" {
  description = "The port of the RDS database"
  value       = aws_db_instance.postgres.port
}

output "db_name" {
  description = "The database name"
  value       = aws_db_instance.postgres.db_name
}

