provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA5CBDRLCA4UPUJAZ5"
  secret_key = "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"
}


/*
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.15.0"
    }
  }
  backend "s3" {
    bucket = "terraform1234finance" #Replace terraform with your name (use lowercase)
    key = "state/terraform.tfstate"
    dynamodb_table = "terraform-state-locking" #Replace terraform with your name (use lowercase)
    region = "eu-north-1"
    access_key = "AKIA5CBDRLCA4UPUJAZ5"
    secret_key = "Ie2BePTRdH/Lke2rh1wJEtcrb4ZSNoo4OMtpMLRo"
  }
}
*/

data "aws_iam_user" "test-user" {
    user_name = "terraform" #Replace terraform with your name (use lowercase)
}

resource "aws_dynamodb_table" "state-locking" {
    name = "${data.aws_iam_user.test-user.user_name}-state-locking"
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
