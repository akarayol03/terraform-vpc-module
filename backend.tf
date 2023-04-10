terraform {
  backend "s3" {
    bucket         = "terraform-backend-us-ahmet-2"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-backend-us-ahmet-2"
    profile = “vscode”
  }
}
