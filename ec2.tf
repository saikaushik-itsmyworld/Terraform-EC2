provider "aws" {
access_key= "${var.access_key}"
secret_key= "${var.secret_key}"
region="${var.region}"
version = "~> 1.7"
}
resource "aws_instance" "test" {
    ami = "ami-0a313d6098716f372"
    instance_type = "t2.micro"
    count = 4
    key_name = "AWS EC2 Key Pair"

     tags {
    Name = "test-${count.index}"
  }
}
resource "aws_security_group" "allowall" {
  name ="allowall"
  description="Allow all Inbound and outbound traffic"

  ingress = "${var.ingress}"

  egress = "${var.egress}"
}
