terraform {
  backend "s3" {
    bucket         = "terraform-cihangir-session-remote-backend-bucket"
    key            = "session-5/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}