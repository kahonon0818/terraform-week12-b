
resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-demo"
  monitoring                  = false
  security_groups             = ["launch-wizard-1"]
  subnet_id                   = "subnet-00c4f6ae938a6bff1"
  tags = {
    Name = "Imported server"
    env  = "dev"
    Team = "devops"
  }
}