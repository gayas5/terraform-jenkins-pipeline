provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "public_instance" {
  ami           = "ami-0cae6d6fe6048ca2c"
  instance_type = "t2.micro"

  tags = {
    Name = "Public-Instance"
  }
}

resource "aws_instance" "private_instance" {   # ✅ Changed name here
  ami           = "ami-0cae6d6fe6048ca2c"
  instance_type = "t2.micro"

  tags = {
    Name = "Private-Instance"
  }
}

output "public_ip" {
  value       = aws_instance.public_instance.public_ip
  description = "Public IP Address of EC2 instance"
}

output "instance_id" {
  value       = aws_instance.public_instance.id
  description = "Instance ID"
}
