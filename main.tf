resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.name_tag
  }
}

resource "aws_instance" "public_instance_2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = "subnet-082209f79cb78956a" # Replace with actual subnet ID

  tags = {
    Name = "${var.name_tag}-2"
  }
}

