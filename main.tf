provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  # Amazon Machine Image- - Ubuntu 18.04  (free)
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_ingress_to_8080.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, world!" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "terraform-demo"
  }
}

resource "aws_security_group" "allow_all_ingress_to_8080" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}