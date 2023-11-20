data "aws_instance" "demo" {
  instance_id = "i-0e9cb1495971e32aa"
}

data "aws_ami" "ami1" {
 most_recent      = true
 owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}