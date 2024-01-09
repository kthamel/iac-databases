locals {
  Name    = "IAC Terraform"
  Project = "Project Terraform"
}

locals {
  common_tags = {
    DevOps_Name    = local.Name
    DevOps_Project = local.Project
  }
}

resource "aws_db_instance" "dbmysql" {
  allocated_storage               = var.allocated_storage
  instance_class                  = var.instance_class
  availability_zone               = var.availability_zone
  engine                          = "mysql"
  engine_version                  = var.engine_version
  username                        = "userdba"
  port                            = 3306
  password                        = random_string.passwd-vault-mysql-1.id
  parameter_group_name            = var.parameter_group_name
  skip_final_snapshot             = true
  db_subnet_group_name            = var.db_subnet_group_name
  vpc_security_group_ids          = var.vpc_security_group_ids.mysql-sg
  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["general"]

  tags = local.common_tags
}

resource "random_string" "passwd-vault-mysql-1" {
  length  = 10
  numeric = true
  lower   = true
  upper   = true
  special = false
}
