

# RSA key of size 4096 bits
resource "tls_private_key" "my_pvt_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key_pvt" {
    filename = "my-key.pem"
    content = tls_private_key.my_pvt_key.private_key_pem
}

resource "aws_key_pair" "my_pub_key" {
  key_name   = "my-pub-key"
  public_key = tls_private_key.my_pvt_key.public_key_openssh
}
