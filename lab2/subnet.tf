resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidr_block)
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnet_cidr_block[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
}
