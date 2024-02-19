resource "aws_security_group" "allow_ssh" {
  name   = "Security-Group-For-Ec2"
  vpc_id = "vpc-0c474aae4e0033d94"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


