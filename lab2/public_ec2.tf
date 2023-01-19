resource "aws_instance" "public_ec2" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet[0].id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [ aws_security_group.sg.id ]
  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install apache2 -y
  EOF

  tags = {
    Name = var.public_ec2_name
  }
}