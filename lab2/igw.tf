
resource "aws_internet_gateway" "terrafom-igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = var.igw_name
  }
}
