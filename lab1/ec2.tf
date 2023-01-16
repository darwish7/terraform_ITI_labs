resource "aws_instance" "ec2_2" {
  ami           = "ami-03f8756d29f0b5f21"
  instance_type = "t2.micro"
  subnet_id     = "subnet-071947b97ecd19b4c"
  associate_public_ip_address = "true"
  vpc_security_group_ids = [ "sg-07022e2b07fd7827a" ]
  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install nginx -y
  EOF

  tags = {
    Name = "terraform_test2"
  }
}