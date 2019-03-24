variable "access_key" {
    default = "AKIAJSS6DECYP4A6JG5Q"
}
variable "secret_key" {

default ="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"
}
variable "region" {

default ="us-east-1"
}
variable ingress {
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]
  }
variable  egress {
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]
  }

  #variable instance_count {
    #  default = 3
 # }
 output "public_ips" {
  value = ["${aws_instance.example.*.public_ip}"]
}