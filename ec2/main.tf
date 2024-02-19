resource "aws_instance" "my_first_server" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_pub_key.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    ManagedBy = "Terraform"
  }
}


