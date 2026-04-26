terraform {
  backend "s3" {
    bucket         = "pragati-terraform-state-bucket-2708"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}