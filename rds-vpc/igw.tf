resource "aws_internet_gateway" "kthamel-rds-igw" {
  vpc_id = aws_vpc.kthamel-rds-vpc.id

  tags = local.common_tags
}