resource "aws_vpc" "kthamel-ec2-vpc" {
  cidr_block                       = "172.32.0.0/16"
  assign_generated_ipv6_cidr_block = false
  enable_dns_support               = true
  enable_dns_hostnames             = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-0" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-1" {
  vpc_id            = aws_vpc.kthamel-ec2-vpc.id
  cidr_block        = "172.32.1.0/24"
  availability_zone = "us-east-1a"

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-2" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-3" {
  vpc_id            = aws_vpc.kthamel-ec2-vpc.id
  cidr_block        = "172.32.3.0/24"
  availability_zone = "us-east-1b"

  tags = local.common_tags
}