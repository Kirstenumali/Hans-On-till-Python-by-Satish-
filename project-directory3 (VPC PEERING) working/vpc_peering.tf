# Create VPC Peering Connection
resource "aws_vpc_peering_connection" "peering_connection" {
  peer_owner_id = aws_vpc.vpc2.owner_id
  peer_vpc_id   = aws_vpc.vpc2.id
  vpc_id        = aws_vpc.vpc1.id

  auto_accept = true

  tags = {
    Name = "vpc-peering"
  }
}
