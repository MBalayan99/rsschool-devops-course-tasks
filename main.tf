# main.tf

terraform {
  backend "s3" {
    bucket         = "mher.terraform-state-s3-bucket"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "mher.terraform-state-lock-table"
  }
}