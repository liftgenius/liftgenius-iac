# # Security group for RDS instance
# resource "aws_security_group" "postgres" {
#   name        = "${var.db_identifier}-sg"
#   description = "Security group for RDS PostgreSQL instance"

#   ingress {
#     from_port   = 5432
#     to_port     = 5432
#     protocol    = "tcp"
#     cidr_blocks = var.allowed_cidr_blocks
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = var.tags
# }

# RDS PostgreSQL Instance
resource "aws_db_instance" "postgres" {
  identifier            = var.db_identifier
  engine                = "postgres"
  engine_version        = var.postgres_version
  instance_class        = var.instance_class
  allocated_storage     = var.allocated_storage
  storage_type          = "gp3"
  storage_encrypted     = true
  
  db_name  = var.db_name
  username = var.db_username
  password = var.db_password
  port     = var.db_port

#   vpc_security_group_ids = var.vpc_security_group_ids
  
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = var.skip_final_snapshot ? null : "${var.db_identifier}-final-snapshot-${formatdate("YYYY-MM-DD-hhmm", timestamp())}"
  
  backup_retention_period = var.backup_retention_days
  backup_window           = var.backup_window
  maintenance_window      = var.maintenance_window
  
  multi_az = var.multi_az

  tags = var.tags
}
