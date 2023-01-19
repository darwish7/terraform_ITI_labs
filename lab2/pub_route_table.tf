resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id
route {

   cidr_block = var.cidr_block_public_source

   gateway_id = aws_internet_gateway.terrafom-igw.id

 }
  tags = {
    Name = var.route_table_name
  }
}
