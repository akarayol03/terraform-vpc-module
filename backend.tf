terraform {
  backend "s3" {
    bucket         = "terraform-backend-us-ahmet-2"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-backend-us-ahmet-2"
    #read_capacity  = 20
    #write_capacity = 20
    #hash_key       = "LockID"
    #attribute {
    #name = "LockID"
    #type = "S"
    #}
  }
  required_version = ">= 0.14.0"
}
