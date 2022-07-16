variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets_cidr" {
  type    = list(any)
  default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "instance_type" {
  type        = string
  description = "This is an Instance type for EC2"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "This is a Key Pair for EC2"
  default     = "MyMacKeyOhio"
}

variable "env" {
  type        = string
  description = "This is a tag for EC2"
  default     = "dev"
}

variable "az" {
  type        = list(any)
  description = "This is availability zones"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}