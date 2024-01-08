resource "aws_vpc" "kthamel-rds-vpc" {
  cidr_block                       = "172.32.0.0/16"
  assign_generated_ipv6_cidr_block = false

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-rds-subnet-0" {
  vpc_id                  = aws_vpc.kthamel-rds-vpc.id
  cidr_block              = "172.32.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-rds-subnet-1" {
  vpc_id                  = aws_vpc.kthamel-rds-vpc.id
  cidr_block              = "172.32.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = local.common_tags
}
