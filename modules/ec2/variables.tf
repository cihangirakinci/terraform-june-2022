variable "ami" {
  type = string
  description = "This is AMI for my EC2 instance"
}

variable "instance_type" {
  type = string
  description = "This size of EC2"
}

variable "env" {
  type = string
  description = "This is an environment"
}