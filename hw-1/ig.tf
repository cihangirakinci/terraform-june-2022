#Internet Gateway
resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.terra_vpc.id
  tags = {
    Name = "main"
  }
}