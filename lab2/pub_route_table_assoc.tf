resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.subnet[0].id
  route_table_id = aws_route_table.public_route_table.id
}
