provider "aws" {
access_key= "${var.access_key}"
secret_key= "${var.secret_key}"
region="${var.region}"
version = "~> 1.7"
}
resource "aws_instance" "example" {
    ami = "ami-0a313d6098716f372"
    instance_type = "t2.micro"
    key_name = "AWS EC2 Key Pair"
     tags {
    Name = "test-instance"
  }
}
resource "aws_security_group" "allowall" {
  name ="allowall"
  description="Allow all Inbound and outbound traffic"

  ingress {
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]
  }
}
