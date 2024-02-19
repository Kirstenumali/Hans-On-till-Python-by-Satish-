# vpc1.tf

# Create VPC 1
resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc1"
  }
}

# Create Internet Gateway for VPC 1
resource "aws_internet_gateway" "igw_vpc1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw-vpc1"
  }
}

# Create Route Table 1 for VPC 1
resource "aws_route_table" "rt_vpc1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpc1.id
  }

  tags = {
    Name = "rt-vpc1"
  }
}

# Create Public Subnet for VPC 1
resource "aws_subnet" "public_subnet_vpc1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-west-2a"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-vpc1"
  }
}


# Create Private Subnet for VPC 1
resource "aws_subnet" "private_subnet_vpc1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "private-subnet-vpc1"
  }
}

resource "aws_route_table_association" "a"{
  subnet_id      = aws_subnet.public_subnet_vpc1.id
  route_table_id = aws_route_table.rt_vpc1.id
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.private_subnet_vpc1.id
  route_table_id = aws_route_table.rt_vpc1.id
}
