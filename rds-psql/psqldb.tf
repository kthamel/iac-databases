resource "aws_db_instance" "psql" {
  allocated_storage      = 20
  instance_class         = "db.t3.micro"
  engine                 = "postgres"
  engine_version         = "15"
  username               = "userdba"
  multi_az               = true
  db_name                = "backend"
  port                   = 5432
  publicly_accessible    = true
  password               = random_string.passwd-psql.id
  parameter_group_name   = aws_db_parameter_group.kthamel-db-parameter-grp.name
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.kthamel-psql-subnet-group.name
  vpc_security_group_ids = [aws_security_group.public-subnet-assoc.id]
  maintenance_window     = "Mon:00:00-Mon:03:00"
  backup_window          = "03:00-06:00"
  # enabled_cloudwatch_logs_exports = ["general"]

  tags = local.common_tags
}

resource "random_string" "passwd-psql" {
  length  = 10
  numeric = true
  lower   = true
  upper   = true
  special = false
}

output "psql-db-passwd" {
  value = random_string.passwd-psql.id
}
