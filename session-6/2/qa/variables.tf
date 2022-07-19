variable "instance_type" {
  type        = string
  description = "This is an Instance type for EC2"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "This is a Key Pair for EC2"
  default     = "MyMacKey"
}

variable "env" {
  type        = string
  description = "This is a tag for EC2"
  default     = "qa"
}

variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for Ingress Rule"
  default     = ["22", "80", "443", "3306", "11111"]
}