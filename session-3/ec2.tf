resource "aws_instance" "main" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.main.id ]
  key_name = var.key_name
  tags = {
    Name = var.env
  }
}
