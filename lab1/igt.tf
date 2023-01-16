resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-03cad5329d1116599"

  tags = {
    Name = "lab2"
  }
}