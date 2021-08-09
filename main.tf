provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  # Amazon Machine Image- - Ubuntu 18.04  (free)
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, world!" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
}