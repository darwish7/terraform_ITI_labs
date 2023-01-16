resource "aws_route_table" "main" {
  vpc_id = "vpc-03cad5329d1116599"
route {

   cidr_block = "0.0.0.0/0"

   gateway_id = "igw-04921c62b6d19f3c0"

 }
  tags = {
    Name = "main"
  }
}