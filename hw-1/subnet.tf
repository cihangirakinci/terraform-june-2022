#Subnet: Public
resource "aws_subnet" "prod-subnet-public" {
  vpc_id                  = aws_vpc.terra_vpc.id
  count                   = length(var.public_subnets_cidr)
  cidr_block              = element(var.public_subnets_cidr, count.index)
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = element(var.az, count.index)
  tags = {
    Name = "SubnetPrivate - ${count.index}"
  }
}

#Subnet: Private
resource "aws_subnet" "prod-subnet-private" {
  vpc_id                  = aws_vpc.terra_vpc.id
  count                   = length(var.private_subnets_cidr)
  cidr_block              = element(var.private_subnets_cidr, count.index)
  map_public_ip_on_launch = "false" //it makes this a private subnet
  availability_zone       = element(var.az, count.index)
  tags = {
    Name = "SubnetPublic - ${count.index}"
  }
}