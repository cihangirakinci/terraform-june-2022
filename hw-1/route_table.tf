#Route table for public subnet: attach Internet Gateway
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.terra_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name = "publicRouteTable"
  }
}

#Route table for private subnet
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.terra_vpc.id
  tags = {
    Name = "privateRouteTable"
  }
}

# Route table association with public subnets
resource "aws_route_table_association" "public" {
  count          = length(var.public_subnets_cidr)
  subnet_id      = element(aws_subnet.prod-subnet-public.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}

# Route table association with private subnets
resource "aws_route_table_association" "private" {
  count          = length(var.private_subnets_cidr)
  subnet_id      = element(aws_subnet.prod-subnet-private.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}
