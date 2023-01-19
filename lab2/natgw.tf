resource "aws_eip" "terrafom_elip" {
  vpc = true
}
resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.terrafom_elip.id
  subnet_id = aws_subnet.subnet[0].id
  tags = {
    Name = var.natgw_name
  }

}
