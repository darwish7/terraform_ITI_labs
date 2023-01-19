resource "aws_security_group" "private_sg" {
  name        = "private"
  description = "Security group for private "
  vpc_id      = aws_vpc.main_vpc.id
  
}