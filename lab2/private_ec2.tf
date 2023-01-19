resource "aws_instance" "private_ec2" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet[1].id
  vpc_security_group_ids = [ aws_security_group.private_sg.id ]
  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install apache2 -y
  EOF

  tags = {
    Name = var.private_ec2_name
  }
}