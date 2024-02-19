# Create VPC 2
resource "aws_vpc" "vpc2" {
  cidr_block = "192.168.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc2"
  }
}

# Create Internet Gateway for VPC 2
resource "aws_internet_gateway" "igw_vpc2" {
  vpc_id = aws_vpc.vpc2.id

  tags = {
    Name = "igw-vpc2"
  }
}

# Create Route Table 2 for VPC 2
resource "aws_route_table" "rt_vpc2" {
  vpc_id = aws_vpc.vpc2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpc2.id
  }

  tags = {
    Name = "rt-vpc2"
  }
}

# Create Public Subnet for VPC 2
resource "aws_subnet" "public_subnet_vpc2" {
  vpc_id     = aws_vpc.vpc2.id
  cidr_block = "192.168.0.0/24"
  availability_zone = "us-west-2a"

  map_public_ip_on_launch = true  

  tags = {
    Name = "public-subnet-vpc2"
  }
}

# Create Private Subnet for VPC 2
resource "aws_subnet" "private_subnet_vpc2" {
  vpc_id     = aws_vpc.vpc2.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-west-2a"


  tags = {
    Name = "private-subnet-vpc2"
  }
}


resource "aws_route_table_association" "c"{
  subnet_id      = aws_subnet.public_subnet_vpc2.id
  route_table_id = aws_route_table.rt_vpc2.id
}


resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private_subnet_vpc2.id
  route_table_id = aws_route_table.rt_vpc2.id
}


  
