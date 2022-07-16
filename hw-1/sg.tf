resource "aws_security_group" "main" {
  name        = "Security Group"
  description = "This is a sg for my EC2"
  vpc_id      = aws_vpc.terra_vpc.id
}