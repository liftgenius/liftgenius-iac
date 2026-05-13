locals {
  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
  
  merged_tags = merge(
    {
      Name        = var.vpc_name
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = local.merged_tags
}

resource "aws_subnet" "main" {
  count             = var.subnet_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  availability_zone = local.azs[count.index % length(local.azs)]

  tags = merge(
    local.merged_tags,
    {
      Name = "${var.vpc_name}-subnet-${count.index + 1}"
    }
  )
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.vpc_name}-subnet-group"
  subnet_ids = aws_subnet.main[*].id

  tags = merge(
    local.merged_tags,
    {
      Name = "${var.vpc_name}-subnet-group"
    }
  )
}

resource "aws_security_group" "rds" {
  name   = "${var.vpc_name}-rds-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    local.merged_tags,
    {
      Name = "${var.vpc_name}-rds-sg"
    }
  )
}
