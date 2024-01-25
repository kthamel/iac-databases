resource "aws_db_subnet_group" "kthamel-psql-subnet-group" {
  name       = "psql-subnet-group"
  subnet_ids = [aws_subnet.kthamel-ec2-subnet-0.id, aws_subnet.kthamel-ec2-subnet-2.id]

  tags = local.common_tags
}

resource "aws_db_parameter_group" "kthamel-db-parameter-grp" {
  name   = "kthamel-db-parameter-grp"
  family = "postgres15"

  tags = local.common_tags
}
