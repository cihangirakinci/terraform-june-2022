variable "ami" {
  type = string
  description = "This is a variable for Amazon Machine Image"
  default = "ami-0be2609ba883822ec"
}

variable "instance_type" {
  type = string
  description = "This is an Instance type for EC2"
  default = "t2.micro"
}

variable "key_name" {
  type = string
  description = "This is a Key Pair for EC2"
  default = "MyMacKey"
}

variable "env" {
  type = string
  description = "This is a tag for EC2"
  default = "Development"
}