resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = var.cidr_block_public_source
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
}