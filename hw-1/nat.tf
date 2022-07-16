#NAT
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element(aws_subnet.prod-subnet-public.*.id, 0)
  depends_on    = [aws_internet_gateway.ig]
  tags = {
    Name = "TerraNat"
  }
}