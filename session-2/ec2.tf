resource "aws_instance" "first_ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t3.micro"
}