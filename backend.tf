terraform {
  backend "s3" {
    bucket         = "terraform-backend-us-ahmet-2"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-backend-us-ahmet-2"
  }
  required_version = ">= 0.14.0"
}
