provider "aws" {
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}
/*
terraform {
  backend "s3" {
    bucket = "nobleprog1234finance"
    key = "state/terraform.tfstate"
    dynamodb_table = "nobleprog-state-locking"
    region = "eu-west-1"
   access_key = ""
    secret_key = ""
  }
}
*/


resource "aws_s3_bucket" "finance" {
    bucket = "nobleprog1234finance"
    tags = {
      Description = "Finance documents"
    }
}


resource "aws_dynamodb_table" "state-locking" {
    name = "nobleprog-state-locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}

resource "local_file" "local-file" {
    filename = "pets.txt"
    content = "We love pets!"
}
