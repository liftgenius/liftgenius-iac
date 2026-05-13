output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "Subnet IDs"
  value       = aws_subnet.main[*].id
}

# output "db_subnet_group_name" {
#   description = "DB subnet group name"
#   value       = aws_db_subnet_group.main.name
# }

# output "rds_security_group_id" {
#   description = "RDS security group ID"
#   value       = aws_security_group.rds.id
# }

# output "vpc_cidr" {
#   description = "VPC CIDR block"
#   value       = aws_vpc.main.cidr_block
# }
