resource "aws_route_table" "kthamel-rds-public-routing" {
  vpc_id = aws_vpc.kthamel-rds-vpc.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      core_network_arn           = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = aws_internet_gateway.kthamel-rds-igw.id
      ipv6_cidr_block            = null
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  ]
  tags = local.common_tags
}

resource "aws_route_table_association" "kthamel-rds-rt-association-0" {
  subnet_id      = aws_subnet.kthamel-rds-subnet-0.id
  route_table_id = aws_route_table.kthamel-rds-public-routing.id
}

resource "aws_route_table_association" "kthamel-rds-rt-association-1" {
  subnet_id      = aws_subnet.kthamel-rds-subnet-1.id
  route_table_id = aws_route_table.kthamel-rds-public-routing.id
}