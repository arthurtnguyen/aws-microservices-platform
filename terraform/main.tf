# Main VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "microservices-vpc"
    Environment = "dev"
    Project = "aws-microservices-platform"
  }
}

# Public Subnets
resource "aws_subnet" "public_1" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "microservicces-public-1"
    Environment = "dev"
    Project = "aws-microservices-platform"
    Type = "public"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "microservices-public-2"
    Environment = "dev"
    Project = "aws-microservices-platform"
    Type = "public"
  }
}

# Private Subnets
resource "aws_subnet" "private_1" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "microservices-private-1"
    Environment = "dev"
    Project = "aws-microservices-platform"
    Type = "private"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "microservices-private-2"
    Environment = "dev"
    Project = "aws-microservices-platform"
    Type = "private"
  }
}

