resource "aws_subnet" "main" {
  vpc_id     = "vpc-03cad5329d1116599"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "main"
  }
}